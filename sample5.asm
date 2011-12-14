include \masm32\include\masm32rt.inc

.code
AppName db "Masm32:", 0

start: mov edi, 123
print "Hello World"
.if edi!=123
print " - and bye bye edi..."
.endif
inkey chr$(13, 10, 10, "hit any key to get outta here")
exit

end start