include \masm32\include\masm32rt.inc

.code                       ; Tell MASM where the code starts
main proc
	print chr$("Hi, I am in the 'main' procedure",13,10)
	ret                         ; return to the next instruction after "call"
main endp

start:                          ; The CODE entry point to the program
	call main                   ; branch to the "main" procedure
	exit
end start                       ; Tell MASM where the program ends
