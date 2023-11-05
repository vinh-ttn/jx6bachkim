     $file = FileExists("C:\Windows\System32\drivers\etc\hosts")

If $file = 0 Then

        MsgBox(0, "Error", "Unable to open file.")

        Exit

EndIf

    FileClose($file)
	;FileExists("test.txt")
	InetGet