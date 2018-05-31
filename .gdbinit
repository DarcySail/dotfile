set confirm off
set disassembly-flavor intel

def  redirect
	call (void)close(1)
	call (void)close(2)
	call (int)open($arg0, 2)
	call (int)open($arg0, 2)
end
