#include <array.au3>
#include <winapi.au3>
#include <MsgBoxConstants.au3>

$a = _Drive_GetHardwareInfos("c")
;_ArrayDisplay($a)
$a = _ArrayToString($a)
$b = StringSplit($a,'|')
MsgBox(0, "Crack Auto VLBS 1.3 JxVinhVien.Com", 'Phần mềm lấy mã [Đăng Ký Auto] tự động - Click OK để tiếp tục.')

Func _Drive_GetHardwareInfos($DriveLetter)

    Local $a_Info_Drive_Hardware_temp[2], $ret, $tTemp, $ptrTemp

    $ret = DllCall("kernel32.dll", 'ptr', 'CreateFileW', _
            'wStr', '\\.\' & $DriveLetter & ':', _
            'dword', 0, _
            'dword', 7, _
            'ptr', 0, _
            'dword', 3, _
            'dword', 0, _
            'ptr', 0 _
            )

    If @error Then Return SetError(1, 0, $a_Info_Drive_Hardware_temp)
    If $ret[0] = 0xFFFFFFFF Then Return SetError(2, 0, $a_Info_Drive_Hardware_temp)

    Local $hDevice = $ret[0]

    Local Const $tagSTORAGE_PROPERTY_QUERY = 'ULONG_PTR PropertyId;ULONG_PTR QueryType;byte AdditionalParameters[4]'
    Local Const $tagSTORAGE_DESCRIPTOR_HEADER = 'dword Version;dword Size'

    Local $tSTORAGE_PROPERTY_QUERY = DllStructCreate($tagSTORAGE_PROPERTY_QUERY)
    DllStructSetData($tSTORAGE_PROPERTY_QUERY, 'PropertyId', 0)
    DllStructSetData($tSTORAGE_PROPERTY_QUERY, 'QueryType', 0)

    Local $tSTORAGE_DESCRIPTOR_HEADER = DllStructCreate($tagSTORAGE_DESCRIPTOR_HEADER)

    $ret = DllCall("kernel32.dll", 'int', 'DeviceIoControl', _
            'handle', $hDevice, _
            'dword', 0x002D1400, _
            'ptr', DllStructGetPtr($tSTORAGE_PROPERTY_QUERY), _
            'dword', DllStructGetSize($tSTORAGE_PROPERTY_QUERY), _
            'PTR', DllStructGetPtr($tSTORAGE_DESCRIPTOR_HEADER), _
            'dword', DllStructGetSize($tSTORAGE_DESCRIPTOR_HEADER), _
            'dword*', 0, _
            'ptr', 0 _
            )

    If DllStructGetData($tSTORAGE_DESCRIPTOR_HEADER, "Size") Then

        Local Const $tagSTORAGE_DEVICE_DESCRIPTOR = 'ulong Version;ulong Size;byte DeviceType;byte DeviceTypeModifier;byte RemovableMedia;byte CommandQueueing;ulong VendorIdOffset;ulong ProductIdOffset;ulong ProductRevisionOffset;ulong SerialNumberOffset;ulong BusType;ulong RawPropertiesLength;byte RawDeviceProperties[' & DllStructGetData($tSTORAGE_DESCRIPTOR_HEADER, "Size") & ']'
        Local $tSTORAGE_DEVICE_DESCRIPTOR = DllStructCreate($tagSTORAGE_DEVICE_DESCRIPTOR)

        $ret = DllCall("kernel32.dll", 'int', 'DeviceIoControl', _
                'handle', $hDevice, _
                'dword', 0x002D1400, _
                'PTR', DllStructGetPtr($tSTORAGE_PROPERTY_QUERY), _
                'dword', DllStructGetSize($tSTORAGE_PROPERTY_QUERY), _
                'PTR', DllStructGetPtr($tSTORAGE_DEVICE_DESCRIPTOR), _
                'dword', DllStructGetSize($tSTORAGE_DEVICE_DESCRIPTOR), _
                'dword*', 0, _
                'PTR', 0 _
                )



        If DllStructGetData($tSTORAGE_DEVICE_DESCRIPTOR, "ProductIdOffset") Then

            $ptrTemp = DllStructGetPtr($tSTORAGE_DEVICE_DESCRIPTOR) + DllStructGetData($tSTORAGE_DEVICE_DESCRIPTOR, "ProductIdOffset")

            $tTemp = DllStructCreate("char Temp[" & _WinAPI_StringLenA($ptrTemp) & "]", $ptrTemp)
            $a_Info_Drive_Hardware_temp[0] = DllStructGetData($tTemp, "Temp")

        EndIf



        If "0x" & Hex(DllStructGetData($tSTORAGE_DEVICE_DESCRIPTOR, "SerialNumberOffset")) <> "0xFFFFFFFF" Then

            $ptrTemp = DllStructGetPtr($tSTORAGE_DEVICE_DESCRIPTOR) + DllStructGetData($tSTORAGE_DEVICE_DESCRIPTOR, "SerialNumberOffset")

            $tTemp = DllStructCreate("char Temp[" & _WinAPI_StringLenA($ptrTemp) & "]", $ptrTemp)
            $a_Info_Drive_Hardware_temp[1] = DllStructGetData($tTemp, "Temp")

        EndIf

    EndIf

    $a_Info_Drive_Hardware_temp[0] = _StringToReadable($a_Info_Drive_Hardware_temp[0])
    $a_Info_Drive_Hardware_temp[1] = _StringToReadable($a_Info_Drive_Hardware_temp[1])


    DllCall("kernel32.dll", 'int', 'CloseHandle', 'hwnd', $hDevice)
    Return $a_Info_Drive_Hardware_temp

EndFunc   ;==>_Drive_GetHardwareInfos

Func _StringToReadable($sString)
    Local $sString_Return, $iAscCode
    Local $aString = StringSplit($sString, "")
    For $i = 1 To $aString[0]
        $iAscCode = Asc($aString[$i])
        Switch $iAscCode
            ; Case 32 to 126
            Case 48 To 57, 65 To 90, 97 To 122
                $sString_Return &= $aString[$i]
        EndSwitch
    Next
    Return $sString_Return
EndFunc   ;==>_StringToReadable

Func _SwapStringOrder($sString)
    Local $sString_Return, $iAscCode
    ; ConsoleWrite($sString & @TAB & StringLen($sString) & @CRLF)
    Local $aString = StringSplit($sString, "")
    For $i = 1 To $aString[0] Step 2
        If $i + 1 > $aString[0] Then
            $sString_Return &= $aString[$i]
            ExitLoop
        EndIf
        $sString_Return &= $aString[$i + 1] & $aString[$i]
        ; ConsoleWrite($i & @TAB & $aString[0] & @CRLF)
    Next
    Return $sString_Return
 EndFunc   ;==>_SwapStringOrder
#cs local $diachi[10]
$diachi[1] = '0.0.0.0 media6.admicro.vn'
MsgBox(0,0,$diachi[1])
FileWriteLine(@ScriptDir&'\hosts',$diachi[1])
#ce
#cs
ConsoleWrite($b[1]&$b[2] & @CRLF)
Local $file = FileOpen(@ScriptDir & "\drives.ini", 2)
;IniWrite(@ScriptDir&'\mahwidauto.ini','General','HWIDVLBS',$b[1]&$b[2])
If $file = -1 Then Exit  MsgBox(0, "Error", "Unable to open file " & @ScriptDir & "\drives.log")
FileWrite($file, $b[1]&$b[2])
FileClose($file)
#ce
#RequireAdmin
Run(@ScriptDir&"\autovlbs.exe")
WinWaitActive("AutoVLBS 1.3","")
Sleep(500);
$handle = WinGetHandle("AutoVLBS 1.3","")
ControlClick($handle, "§¨ng ký", "[Classnn:Button19]")
Sleep(2000);
WinSetState("New version!", "", @SW_HIDE)
;WinClose("New version!")
WinClose("Dang ky")
;ProcessClose ("autovlbs.exe")
;WinSetState("AutoVLBS 1.3", "", @SW_HIDE)
;WinSetState("New version!", "", @SW_HIDE)


Func LogIt($sText)
    $b[1]&$b[2] &= $sText & @CRLF
EndFunc