@ECHO OFF
TITLE=Update Hosts File
copy C:\Windows\System32\drivers\etc\hosts C:\Windows\System32\drivers\etc\hosts.backup
ECHO. >> C:\Windows\System32\drivers\etc\hosts
ECHO 127.0.0.1 a.agtool.net >> C:\Windows\System32\drivers\etc\hosts
ECHO 127.0.0.1 a.agtool.net/* >> C:\Windows\System32\drivers\etc\hosts
ECHO 127.0.0.1 update.agtool.net >> C:\Windows\System32\drivers\etc\hosts
ECHO 127.0.0.1 update.agtool.net/* >> C:\Windows\System32\drivers\etc\hosts
ECHO 127.0.0.1 agtool.net >> C:\Windows\System32\drivers\etc\hosts
ECHO 127.0.0.1 agtool.net/* >> C:\Windows\System32\drivers\etc\hosts
ECHO 127.0.0.1 */agtool.net >> C:\Windows\System32\drivers\etc\hosts
Msg * "Neu chua crack thanh cong, vui long chay lai file nay duoi quyen Administrator (Chuot phai, chon Run as Administrator)"
autovlbs.exe
EXIT
