%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% This script generates a register memory map for all
% AXI4-Lite Gateway In / Out blocks in a Xilinx System Generator model.
%
% See: xsg.h & xsg.c for the code which parses this memory map
%
% Author: Steffen Vogel <stvogel@eonerc.rwth-aachen.de>
% Copyright: Steffen Vogel, 2015
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function result = main()
    fields = { 'Name', 'Created', 'Creator', 'Description', 'LastModifiedBy', 'LastModifiedDate', 'ModifiedBy', 'ModifiedComment', 'ModelVersion' };
    blocks = [ ];
    
    % XSG_BLOCK_GATEWAY_{IN,OUT}
    for entry = get_gateways(bdroot)
        value = typecast(single(entry.Value), 'uint32');

        descrp = bitshift(entry.Type,      0) +  ...
                 bitshift(entry.BinPt,     8);

        block = [  descrp                        ...
                   value                         ...
                   entry.Offset                  ...
                   str2uint32(entry.Name)        ...
                ];
             
        block_len = length(block);
        block_hdr = bitshift(block_len, 16) + hex2dec('1000') + entry.Direction;
        blocks = [ blocks block_hdr block ];
    end
    
    % XSG_BLOCK_INFO
    for cell = fields
        field = char(cell(1));
        value = get_param(bdroot, field);
       
        if ~isempty(value) && ischar(value) && ischar(field)
            block     = [ str2uint32(field) str2uint32(value) ];
            block_len = length(block);
            block_hdr = bitshift(block_len, 16) + hex2dec('2000');
            blocks    = [ blocks block_hdr block ];
        end
    end
    
    % The checksum is the sum of encoded uint32 modulo 2^32 (truncated)
    checksum = mod(sum(blocks), 2^32);
    
    % XSG ROM Block expects a double initialization vector
    result = double([               ...
                hex2dec('DEADBABE') ...
                length(blocks) + 3  ... % Total length of memory map
                blocks              ...
                checksum            ... % Checksum covers only 'blocks'
             ]);
end

function casted = str2uint32(string)
    term = uint8([ string 0 ]); % \0 termination
    len = length(term);
    padded = [ term zeros(1, 4 * ceil(len / 4) - len) ];
    casted = typecast(padded, 'uint32');
end

function map = get_gateways(system)
    gw_in  = find_system(system, 'block_type', 'gatewayin',  'interface', 'AXI4-Lite');
    gw_out = find_system(system, 'block_type', 'gatewayout', 'interface', 'AXI4-Lite');

    gws = sort([ gw_in; gw_out ]);
    offset = 8; % 0x0 is map_addr, 0x04 is map_data
    map = [ ];

    for path = transpose(gws)
        handle = getSimulinkBlockHandle(path);
        params = get(handle);
        
        if strcmp(params.block_type, 'gatewayin')
            switch params.arith_type
                case 'Unsigned'
                    type = 0;
                case 'Signed  (2''s comp)'
                    type = 1;
                case 'Floating-point'
                    type = 2;
                case 'Boolean'
                    type = 3;
                otherwise
                    type = hex2dec('F');
            end
            
            value = get_constant_block_input(path);
            dir   = 0;
            binpt = eval(params.bin_pt);
        elseif strcmp(params.block_type, 'gatewayout')
            dir   = 1;
            value = NaN;
            type  = hex2dec('F');
            binpt = hex2dec('FF');
        end
    
        if strcmp(params.automatic_assignment, 'on')
            addr = offset;
            offset = offset + 4;
        else
            addr = eval(params.address_offset);
        end
        
        map = [ map struct(                         ...
                        'Name',      params.Name,   ...
                        'Offset',    addr,          ...
                        'Value',     value,         ...
                        'Type',      type,          ...
                        'BinPt',     binpt,         ...
                        'Direction', dir,           ...
                        'Handle',    handle         ...
                    )
              ];
    end
end

function value = get_constant_block_input(path)
    value = -1;
    connections = cell2mat(get_param(path, 'PortConnectivity'));

    % for all connected blocks
    for connection = transpose(connections)
        % for all blocks which are connected to inputs
        if connection.SrcBlock > 0
            srcBlock = get(connection.SrcBlock);
           
            % is the block a constant?
            if strcmp(srcBlock.BlockType, 'Constant')
                value = eval(srcBlock.Value);
                break;
            end
        end
    end
end