include \masm32\include\masm32rt.inc

system PROTO C, :PTR BYTE

.data
command BYTE "C:\DOCUME~1\mvelez\MYDOCU~1\obama\dev\tool\bin\rand.exe"

.code
;; Random number generator. It's used along the engine.
Random          proc
	invoke system, ADDR command
Random          endp

start:
	call Random
	print str$(eax)
	invoke ExitProcess, 0
end start