function test(block)
    block
    %input = get_src_block(block)
    type  = get_input_type(block)
end

function type = get_input_type(block)
    port = -1;
    src_block = get_src_block(block);

    connections = get_param(src_block, 'PortConnectivity');
    for connection = connections'
       if connection.DstBlock == block
           port = str2num(connection.Type);
       end
    end
    
    types = get_param(src_block, 'CompiledPortDataTypes')
    out_types = types.Inport

    if port > 0
        type = out_types(port);
    else
        type = '';
    end
end

function value = get_constant_value(block)
    % is the block a constant?
    if strcmp(get_param(block, 'BlockType'), 'Constant')
        value = eval(get_param(block, 'Value'));
    else
        value = -1;
	end
end

function handle = get_src_block(block)
    handle = -1;

    connections = get_param(block, 'PortConnectivity');
    for connection = connections'
        % for all blocks which are connected to inputs
        if connection.SrcBlock > 0
            handle = connection.SrcBlock;
            return;
        end
    end
end