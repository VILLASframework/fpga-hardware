classdef package < xilinx_compilation

   methods
	
	   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	   % Define how the sysgen token looks. 
       % 
       % Enabling only Verilog for your compilation target can be done
       % e.g. obj.hdl = 'Verilog';
       %
       % Allowing only a particular Implementation Strategy for your 
       % compilation target can be done as follows: 
       % e.g. obj.impl_strategy = 'Flow_Quick';
       %
       % See the documentation for more details.  
	   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
       function setup_sysgen_token(obj) 
            obj.target_name = {class(obj)};
            obj.create_iface_doc = 'on';
       end
       
	   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	   % Define how the Project should be generated. Adding tcl commands, 
	   % files etc. should be done here. 
       % 
       % e.g. obj.add_tcl_command('launch_runs synth_1');
       % e.g. obj.add_file('C:\work\myconstraints.xdc');
       % e.g. obj.run_implementation()
       % 
       % design_info is the struct that contains the information about the 
       % design and its interface. See documentation for more details 
	   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
       function pre_project_creation(obj, design_info)
           % Pass some variables to TCL code
           map = find_system(design_info.top_level, 'ReferenceBlock', 's2ss/Memory Map');
           params = {'version', 'author', 'desc', 'company_url', 'vendor', 'vendor_display_name'};

           for param = params
                cmd = sprintf('set %s {%s}', param{1}, char(get_param(map, param{1})));
                obj.add_tcl_command(cmd);
           end

           % We need to know the Vivado project dir
           target_dir  = strrep(design_info.target_dir,  filesep, '/');
           target_name = obj.target_name{1};
           
           obj.add_tcl_command(['set target_dir {'  target_dir '}']);
           obj.add_tcl_command(['set target_name {' target_name '}']);
           
           % Package System Generator Design as Vivado IP package
           dir    = fileparts(mfilename('fullpath'));
           script = strrep([dir '/package.tcl'], filesep, '/');
           obj.add_tcl_command(['source ' script]);
       end       
       
	   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	   % After the project is generated and the additional tcl commands 
	   % executed, post_project_creation will be called. You can use this 
	   % function to do things like error parsing, creating Hwcosim token. 
	   % See documentation for more details. 
	   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
       function post_project_creation(obj, design_info) 

       end 
	             
   end
   
   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   %%%% Do not modify this file below this point   %%%%%%%%%%%%%%%%%%%%%%%
   %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   methods (Access = 'protected')	   
	   
       function add_file(obj, file_name)
             add_file@xilinx_compilation(obj, file_name);
       end

       function add_tcl_command(obj, tcl_command)  
            add_tcl_command@xilinx_compilation(obj, tcl_command);
       end 
	   
       function add_part(obj, family, device, speed, package, temperature)            
            add_part@xilinx_compilation(obj, family, device, speed, package, temperature);  
       end 
	   
       function run_synthesis(obj)            
			run_synthesis@xilinx_compilation(obj);
	   end
	   
       function run_implementation(obj)           
			run_implementation@xilinx_compilation(obj);	   
	   end
	   
       function generate_bitstream(obj)           
			generate_bitstream@xilinx_compilation(obj);
       end
                
   end
   
   methods         
       function clear(obj)           
			clear@xilinx_compilation(obj);
       end   
   end
       
end