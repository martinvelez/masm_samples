; Display a Message Box
include \masm32\include\masm32rt.inc

.data
WindowText 	db 	"Window Text", 0
WindowCaption 	db 	"Window Caption", 0

.code
start:
	invoke MessageBox, NULL, addr WindowText, addr WindowCaption, MB_ICONQUESTION
	invoke ExitProcess, 0
end start

;The message box function definition on MSDN as follows;
;int MessageBox(HWND hWnd,LPCTSTR lpText,LPCTSTR lpCaption,UINT uType); 
; hWnd - is the optional handle of the the window that you are using
; lpText - the text displayed inside the message box
; lpCaption - the message box title
; uType - additional properties used for the icon and types of input (eg, Abort, Retry, etc..) 