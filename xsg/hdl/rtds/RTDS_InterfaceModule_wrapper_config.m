
function RTDS_InterfaceModule_wrapper_config(this_block)

  % Revision History:
  %
  %   25-Feb-2016  (17:20 hours):
  %     Original code was machine generated by Xilinx's System Generator after parsing
  %     D:\msv\02_msv-svo\s2ss\clients\sysgen\streamer\RTDS_InterfaceModule_wrapper.vhd
  %
  %

  this_block.setTopLevelLanguage('VHDL');

  this_block.setEntityName('RTDS_InterfaceModule_wrapper');

  % System Generator has to assume that your entity  has a combinational feed through; 
  %   if it  doesn't, then comment out the following line:
  this_block.tagAsCombinational;

%  this_block.addSimulinkInport('i_Rst_b');
  this_block.addSimulinkInport('i_SFP_RX_N');
  this_block.addSimulinkInport('i_SFP_RX_P');
  this_block.addSimulinkInport('i_SFP_LOS');
  this_block.addSimulinkInport('i_SYS_CLK_N');
  this_block.addSimulinkInport('i_SYS_CLK_P');
  this_block.addSimulinkInport('i_CLKBUF_Q0_N');
  this_block.addSimulinkInport('i_CLKBUF_Q0_P');
  this_block.addSimulinkInport('iv_TxAdr');
  this_block.addSimulinkInport('iv_TxData');
  this_block.addSimulinkInport('i_TxWr');
  this_block.addSimulinkInport('i_LockBank');
  this_block.addSimulinkInport('i_FreeBank');
  this_block.addSimulinkInport('iv_Version');

  this_block.addSimulinkOutport('o_SFP_TX_N');
  this_block.addSimulinkOutport('o_SFP_TX_P');
  this_block.addSimulinkOutport('o_TxFull');
  this_block.addSimulinkOutport('o_TxInProgress');
  this_block.addSimulinkOutport('ov_RxAdr');
  this_block.addSimulinkOutport('ov_RxData');
  this_block.addSimulinkOutport('o_RxValid');
  this_block.addSimulinkOutport('o_TstepPulse');
  this_block.addSimulinkOutport('o_LinkUp');
  this_block.addSimulinkOutport('o_CardDetected');
  this_block.addSimulinkOutport('o_CaseInit');
  this_block.addSimulinkOutport('o_CaseReset');
  this_block.addSimulinkOutport('o_Clk100M');
  this_block.addSimulinkOutport('o_PowerOnRst');

  o_SFP_TX_N_port = this_block.port('o_SFP_TX_N');
  o_SFP_TX_N_port.setType('Bool');
  o_SFP_TX_N_port.useHDLVector(false);
  o_SFP_TX_P_port = this_block.port('o_SFP_TX_P');
  o_SFP_TX_P_port.setType('Bool');
  o_SFP_TX_P_port.useHDLVector(false);
  o_TxFull_port = this_block.port('o_TxFull');
  o_TxFull_port.setType('Bool');
  o_TxFull_port.useHDLVector(false);
  o_TxInProgress_port = this_block.port('o_TxInProgress');
  o_TxInProgress_port.setType('Bool');
  o_TxInProgress_port.useHDLVector(false);
  ov_RxAdr_port = this_block.port('ov_RxAdr');
  ov_RxAdr_port.setType('UFix_24_0');
  ov_RxData_port = this_block.port('ov_RxData');
  ov_RxData_port.setType('UFix_32_0');
  o_RxValid_port = this_block.port('o_RxValid');
  o_RxValid_port.setType('Bool');
  o_RxValid_port.useHDLVector(false);
  o_TstepPulse_port = this_block.port('o_TstepPulse');
  o_TstepPulse_port.setType('Bool');
  o_TstepPulse_port.useHDLVector(false);
  o_LinkUp_port = this_block.port('o_LinkUp');
  o_LinkUp_port.setType('Bool');
  o_LinkUp_port.useHDLVector(false);
  o_CardDetected_port = this_block.port('o_CardDetected');
  o_CardDetected_port.setType('Bool');
  o_CardDetected_port.useHDLVector(false);
  o_CaseInit_port = this_block.port('o_CaseInit');
  o_CaseInit_port.setType('Bool');
  o_CaseInit_port.useHDLVector(false);
  o_CaseReset_port = this_block.port('o_CaseReset');
  o_CaseReset_port.setType('Bool');
  o_CaseReset_port.useHDLVector(false);
  o_Clk100M_port = this_block.port('o_Clk100M');
  o_Clk100M_port.setType('Bool');
  o_Clk100M_port.useHDLVector(false);
  o_PowerOnRst_port = this_block.port('o_PowerOnRst');
  o_PowerOnRst_port.setType('Bool');
  o_PowerOnRst_port.useHDLVector(false);

  % -----------------------------
  if (this_block.inputTypesKnown)
    % do input type checking, dynamic output type and generic setup in this code block.

%    if (this_block.port('i_Rst_b').width ~= 1);
%      this_block.setError('Input data type for port "i_Rst_b" must have width=1.');
%    end

%    this_block.port('i_Rst_b').useHDLVector(false);

    if (this_block.port('i_CLKBUF_Q0_N').width ~= 1);
      this_block.setError('Input data type for port "i_CLKBUF_Q0_N" must have width=1.');
    end

    this_block.port('i_CLKBUF_Q0_N').useHDLVector(false);

    if (this_block.port('i_CLKBUF_Q0_P').width ~= 1);
      this_block.setError('Input data type for port "i_CLKBUF_Q0_P" must have width=1.');
    end

    this_block.port('i_CLKBUF_Q0_P').useHDLVector(false);
    
    if (this_block.port('i_SFP_RX_N').width ~= 1);
      this_block.setError('Input data type for port "i_SFP_RX_N" must have width=1.');
    end

    this_block.port('i_SFP_RX_N').useHDLVector(false);
    
    if (this_block.port('i_SFP_RX_P').width ~= 1);
      this_block.setError('Input data type for port "i_SFP_RX_P" must have width=1.');
    end

    this_block.port('i_SFP_RX_P').useHDLVector(false);

    if (this_block.port('i_SFP_LOS').width ~= 1);
      this_block.setError('Input data type for port "i_SFP_LOS" must have width=1.');
    end

    this_block.port('i_SFP_LOS').useHDLVector(false);

    if (this_block.port('iv_TxAdr').width ~= 8);
      this_block.setError('Input data type for port "iv_TxAdr" must have width=8.');
    end

    if (this_block.port('iv_TxData').width ~= 32);
      this_block.setError('Input data type for port "iv_TxData" must have width=32.');
    end

    if (this_block.port('i_TxWr').width ~= 1);
      this_block.setError('Input data type for port "i_TxWr" must have width=1.');
    end

    this_block.port('i_TxWr').useHDLVector(false);

    if (this_block.port('i_LockBank').width ~= 1);
      this_block.setError('Input data type for port "i_LockBank" must have width=1.');
    end

    this_block.port('i_LockBank').useHDLVector(false);

    if (this_block.port('i_FreeBank').width ~= 1);
      this_block.setError('Input data type for port "i_FreeBank" must have width=1.');
    end

    this_block.port('i_FreeBank').useHDLVector(false);

    if (this_block.port('iv_Version').width ~= 16);
      this_block.setError('Input data type for port "iv_Version" must have width=16.');
    end

    if (this_block.port('i_SYS_CLK_N').width ~= 1);
      this_block.setError('Input data type for port "i_SYS_CLK_N" must have width=1.');
    end

    this_block.port('i_SYS_CLK_N').useHDLVector(false);
    
    if (this_block.port('i_SYS_CLK_P').width ~= 1);
      this_block.setError('Input data type for port "i_SYS_CLK_P" must have width=1.');
    end

    this_block.port('i_SYS_CLK_P').useHDLVector(false);

  end  % if(inputTypesKnown)
  % -----------------------------

  % -----------------------------
   if (this_block.inputRatesKnown)
     setup_as_single_rate(this_block,'i_Clk','i_Ce')
   end  % if(inputRatesKnown)
  % -----------------------------

    uniqueInputRates = unique(this_block.getInputRates);


  % Add addtional source files as needed.
  %  |-------------
  %  | Add files in the order in which they should be compiled.
  %  | If two files "a.vhd" and "b.vhd" contain the entities
  %  | entity_a and entity_b, and entity_a contains a
  %  | component of type entity_b, the correct sequence of
  %  | addFile() calls would be:
  %  |    this_block.addFile('b.vhd');
  %  |    this_block.addFile('a.vhd');
  %  |-------------

  %    this_block.addFile('');
  %    this_block.addFile('');

  try
    root_dir = getfield(slproject.getCurrentProject, 'RootFolder');
    hdl_dir = [root_dir '/hdl'];
  catch % workaround if no Simulink project is opened
    hdl_dir = [fileparts(mfilename('fullpath')) '/..'];
  end
  
  this_block.addFile([hdl_dir '/two_flop_synchronizer.vhd']);
  this_block.addFile([hdl_dir '/two_flop_toggle_synchronizer.vhd']);
  this_block.addFile([hdl_dir '/rtds/Fifo16_8_v7.ngc']);
  this_block.addFile([hdl_dir '/rtds/Fifo16_18_v7.ngc']);
  this_block.addFile([hdl_dir '/rtds/Fifo18X1024_v7.ngc']);
  this_block.addFile([hdl_dir '/rtds/fifo512_64_ft.ngc']);
  this_block.addFile([hdl_dir '/rtds/RTDS_InterfaceModule.ngc']);
  this_block.addFile([hdl_dir '/rtds/RTDS_InterfaceModule_wrapper.vhd']);
return;


% ------------------------------------------------------------

function setup_as_single_rate(block,clkname,cename) 
  inputRates = block.inputRates; 
  uniqueInputRates = unique(inputRates); 
  if (length(uniqueInputRates)==1 & uniqueInputRates(1)==Inf) 
    block.addError('The inputs to this block cannot all be constant.'); 
    return; 
  end 
  if (uniqueInputRates(end) == Inf) 
     hasConstantInput = true; 
     uniqueInputRates = uniqueInputRates(1:end-1); 
  end 
  if (length(uniqueInputRates) ~= 1) 
    block.addError('The inputs to this block must run at a single rate.'); 
    return; 
  end 
  theInputRate = uniqueInputRates(1); 
  for i = 1:block.numSimulinkOutports 
     block.outport(i).setRate(theInputRate); 
  end 
  block.addClkCEPair(clkname,cename,theInputRate); 
  return; 

% ------------------------------------------------------------

