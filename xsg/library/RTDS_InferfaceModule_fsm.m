function [UserTxAdr, UserTxData, UserTxWr, UserLockBank, UserFreeBank, tready] = RTDS_InferfaceModule_fsm(start, tdata, tvalid, UserTxFull, UserTxInProgress)

    % States
    st_Idle     = 0;
    st_LockBank = 1;
    st_Data     = 2; % Send sequentially all data
    st_DataWait = 3; % Wait for UserTxFull deassertion
    st_FreeBank = 4;

    persistent state, state = xl_state(st_Idle, {xlUnsigned, 3, 0});
    persistent index, index = xl_state(0, {xlUnsigned, 8, 0});
    
    switch state
            case st_Idle
                    if start == 1
                            state = st_LockBank;
                    else
                            state = st_Idle;
                    end

                    UserTxAdr       = 0;
                    UserTxData      = 0;
                    UsewrTxWr       = 0;
                    UserLockBank    = 0;
                    UserFreeBank	= 0;
 
            case st_LockBank
                    state = st_Data;
                    
                    UserTxAdr       = 0;
                    UserTxData      = 0;
                    UsewrTxWr       = 1;
                    UserLockBank    = 1;
                    UserFreeBank    = 0;

            case st_Data
                    if index == nbValues - 1
                            state = st_FreeBank;
                    else
                            if UserTxFull == 0
                                    state = st_Data;
                            else
                                    state = st_DataWait;
                            end
                    end
                    
                 
                    UserTxAdr                 = xl_force(Adr_out_temp, Adr_arith, Adr_binpt);
                    UserTxData                = xl_force(Data_out_temp, Data_arith, Data_binpt);
                    
                    UserTxWr                 = 1;
                    UserLockBank            = 0;
                    UserFreeBank            = 0;
                    
                    index = index + 1;
                    
             case st_DataWait
                    if UserTxFull == 0
                            state = st_Data;
                    else
                            state = st_DataWait;
                    end
                    
                    index = 0;
                    
                    UserTxAdr       = 0;
                    UserTxData      = 0;
                    UsewrTxWr       = 0;
                    UserLockBank    = 0;
                    UserFreeBank    = 0;
                    
             case st_FreeBank
                    state           = st_Idle;
                    index = 0;
                    
                    UserTxAdr       = 0;
                    UserTxData      = 0;
                    UsewrTxWr       = 1;
                    UserLockBank    = 0;
                    UserFreeBank    = 1;
 
            otherwise
                    state = st_Idle;

                    UserTxAdr       = 0;
                    UserTxData      = 0;
                    UsewrTxWr       = 0;
                    UserLockBank    = 0;
                    UserFreeBank    = 0;
             
end