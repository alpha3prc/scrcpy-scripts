strCommand = "cmd /c scrcpy.exe --tcpip=%tcp_argu%  -m 1024 -Swb 10M --max-fps=60 --window-width=700 --no-mouse-hover --no-audio --video-codec=h264"

For Each Arg In WScript.Arguments
    strCommand = strCommand & " """ & replace(Arg, """", """""""""") & """"
Next

CreateObject("Wscript.Shell").Run strCommand, 0, false
