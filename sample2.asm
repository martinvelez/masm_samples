; Print an integer
include \masm32\include\masm32rt.inc

.data
var1 dword 000000FFh

.code
start:
	print str$(var1)							;print the value in the variable, destroys eax
	invoke ExitProcess, 0
end start