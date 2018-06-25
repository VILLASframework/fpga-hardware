library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library unisim;
  use unisim.vcomponents.all;

entity RTDS_InterfaceModule is
	port (
		-- MGT interface
		-- Those signals will be ignored by this entity
		SFP_RX_N         : in  std_logic;
		SFP_RX_P         : in  std_logic;
		SFP_TX_N         : out std_logic;
		SFP_TX_P         : out std_logic;

		-- to MGT user interface
		UserTxAdr        : in  std_logic_vector( 7 downto 0);
		UserTxData       : in  std_logic_vector(31 downto 0);
		UserTxWr         : in  std_logic;
		UserTxFull       : out std_logic;
		UserTxInProgress : out std_logic;
		UserLockBank     : in  std_logic;
		UserFreeBank     : in  std_logic;
		UserVersion      : in  std_logic_vector( 7 downto 0);

		-- from MGT user interface
		UserRxAdr        : out std_logic_vector(15 downto 0);
		UserRxData       : out std_logic_vector(31 downto 0);
		UserRxValid      : out std_logic;
		UserTstepPulse   : out std_logic;

		-- misc control signals
		LinkUp           : out std_logic;
		CardDetected     : out std_logic;
		CaseReset        : out std_logic;
		Clk100M          : out std_logic;
		MGTREFCLK        : in  std_logic;
		PowerOnRst       : out std_logic
	);
end entity;

architecture empty of RTDS_InterfaceModule is

  component MGTDummy
  generic (
    gs_technology           : string := "6Series"
  );                        
  port (                    
    RXN_IN                  : in   std_logic;
    RXP_IN                  : in   std_logic;
    MGTREFCLKRX_IN          : in   std_logic_vector(1 downto 0);
    TXN_OUT                 : out  std_logic;
    TXP_OUT                 : out  std_logic
  );
  end component MGTDummy;  
  
  constant cb_sim_on            : boolean := false;
  
  signal s_clk                  : std_logic;
  signal s_rst                  : std_logic;
  signal sv_rst_timer           : std_logic_vector(7 downto 0) := (others => '1');
  signal sv_sync_period_counter : std_logic_vector(11 downto 0) := conv_std_logic_vector(2047, 12);
  signal s_sync                 : std_logic;
  signal sv_UserRxAdr           : std_logic_vector(15 downto 0);
  signal sv_UserRxData          : std_logic_vector(31 downto 0);
  signal s_UserRxValid          : std_logic;  
  signal sv_datacnt             : std_logic_vector(7 downto 0);
  signal s_stream_data          : std_logic;
  signal sv_tx_addr             : std_logic_vector(7 downto 0);
  signal sv_tx_data             : std_logic_vector(31 downto 0);  

begin
  
  sim_off1 : if not cb_sim_on generate
    GTX_u0 : MGTDummy
    generic map (
      gs_technology           => "6Series"
    )
    port map (                    
      RXN_IN                  => SFP_RX_N,
      RXP_IN                  => SFP_RX_P,
      MGTREFCLKRX_IN(0)       => '0',
      MGTREFCLKRX_IN(1)       => MGTREFCLK,
      TXN_OUT                 => SFP_TX_N,
      TXP_OUT                 => SFP_TX_P
    );
    
    userclk100M_bufg : bufg
    port map (
      I => MGTREFCLK,
      O => s_clk 
    );
  end generate;
  
  Clk100M        <= s_clk;
  PowerOnRst     <= s_rst;
  UserTstepPulse <= s_sync;
  
  sim_on : if cb_sim_on generate
    process
    begin
      s_clk <= '0';
      wait for 10 ns;
      while true loop
        s_clk <= '1'; wait for 5 ns;
        s_clk <= '0'; wait for 5 ns;
      end loop;
    end process;
  end generate;
  
  
  process(s_clk)
  begin
    if rising_edge(s_clk) then
      if sv_rst_timer = 0 then
        s_rst        <= '0';
      else
        s_rst        <= '1';
        sv_rst_timer <= sv_rst_timer - 1;
      end if;
    end if;
  end process;
  
  process(s_clk, s_rst)
  begin
    if (s_rst = '1') then
      s_sync                 <= '0';
      LinkUp                 <= '0';
      CardDetected           <= '0';
      UserTxFull             <= '0';
      sv_sync_period_counter <= conv_std_logic_vector(2047, 12);
    elsif rising_edge(s_clk) then
      if (sv_sync_period_counter = 0) then
        s_sync                 <= '1';
        sv_sync_period_counter <= conv_std_logic_vector(2047, 12);
      else
        s_sync                 <= '0';
        sv_sync_period_counter <= sv_sync_period_counter - 1;
      end if;
      
      if (sv_sync_period_counter < 1023) and (UserVersion(0) = '1')then
        LinkUp <= '1' and UserVersion(1);
      else
        LinkUp <= '0';
      end if;
      
      if (sv_sync_period_counter < 2000) and (UserVersion(2) = '1') then
        CardDetected <= '1' and UserVersion(3);
      else
        CardDetected <= '0';
      end if;
      
      if (sv_sync_period_counter = 800) and (UserVersion(4) = '1') then
        CaseReset <= '1' and UserVersion(5);
      else
        CaseReset <= '0';
      end if;
      
      if (sv_sync_period_counter < 1500) and (UserVersion(6) = '1') then
        UserTxInProgress <= '1' and UserVersion(7);
      else
        UserTxInProgress <= '0';
      end if;      
      
      UserTxFull <= sv_sync_period_counter(3);
            
    end if;
  end process;
  
  sim_off0 : if not cb_sim_on generate
    process(s_clk, s_rst)
    begin
      if (s_rst = '1') then  
        sv_UserRxAdr  <= (others => '0'); 
        sv_UserRxData <= (others => '0'); 
        s_UserRxValid <= '0';      
      elsif rising_edge(s_clk) then
        sv_UserRxAdr  <= ext(UserTxAdr, sv_UserRxAdr'length);
        sv_UserRxData <= UserTxData;
        s_UserRxValid <= UserTxWr and UserLockBank and UserFreeBank;
      end if;
    end process;      
  end generate;
  
  UserRxAdr    <= sv_UserRxAdr;
	UserRxData   <= sv_UserRxData;
	UserRxValid  <= s_UserRxValid;
    
  
  sim_on1 : if cb_sim_on generate
    -- emulate data reception
    process(s_clk, s_rst)
    begin
      if (s_rst = '1') then
        sv_UserRxAdr  <= (others => '0'); 
        sv_UserRxData <= (others => '0'); 
        s_UserRxValid <= '0';
        sv_datacnt    <= conv_std_logic_vector(64, 8);
        s_stream_data <= '0';
      elsif rising_edge(s_clk) then
        
        if (sv_datacnt = 1) then
          s_stream_data <= '0';
        elsif (sv_sync_period_counter(7 downto 0) = 255) then
          s_stream_data <= '1';
          sv_datacnt    <= conv_std_logic_vector(64, 8);
        end if;
        
        if (s_stream_data = '1') then
          sv_datacnt <= sv_datacnt - 1;
          sv_UserRxAdr  <= sv_UserRxAdr + 1;
          sv_UserRxData <= sv_UserRxData + 5;
          s_UserRxValid <= '1';  
        else
          s_UserRxValid <= '0';
        end if;
      end if;
    end process;
    
    -- validate TX PATH
    process(s_clk, s_rst)
    begin
      if (s_rst = '1') then
        sv_tx_addr <= conv_std_logic_vector(1, sv_tx_addr'length);
        sv_tx_data <= conv_std_logic_vector(5, sv_tx_data'length);
      elsif rising_edge(s_clk) then
        if (UserTxWr = '1') then
          if (UserLockBank /= '1' and UserFreeBank /= '1') then
            if (UserTxAdr /= sv_tx_addr) then
              assert false report "TX Addr failed: " & integer'image(conv_integer(UserTxAdr)) & " vs " & integer'image(conv_integer(sv_tx_addr)) severity note;
            end if;
            if (UserTxData /= sv_tx_data) then
              assert false report "TX Data failed: " & integer'image(conv_integer(UserTxData)) & " vs " & integer'image(conv_integer(sv_tx_data)) severity note;
            end if;
            sv_tx_addr <= sv_tx_addr + 1;
            sv_tx_data <= sv_tx_data + 5;
          end if;
        end if;
      end if;
    end process;  
  end generate;
  
end empty;