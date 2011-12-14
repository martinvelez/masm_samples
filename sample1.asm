; 3 ways to print Hello World
include \masm32\include\masm32rt.inc

.data
Message1 db "2: Hello World Again!", 0
Message2 db "3: Hola Mundo!", 0

.code
start:
	print "1: Hello World!", 10, 13						;print the message to the standard output followed by newline
	print addr Message1, 10, 13				;print the message to the standard output followed by newline
	invoke StdOut, addr Message2		;print the message to the standard output
	print chr$(13, 10)														;print the newline character to the standar output
	invoke ExitProcess, 0
end start