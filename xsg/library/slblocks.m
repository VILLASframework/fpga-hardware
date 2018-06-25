function blkStruct = slblocks
	% This function specifies that the library should appear
	% in the Library Browser
	% and be cached in the browser repository

	Browser.Library = 's2ss';
	Browser.Name = 'Xilinx ACS Reference Blockset';

	blkStruct.Browser = Browser;