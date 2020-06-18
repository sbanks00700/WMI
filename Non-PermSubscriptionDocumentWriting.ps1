#Word
$query = "SELECT * FROM Win32_ProcessStartTrace WHERE ProcessName='notepad.exe'"
#Register WMI event
Register-WMIEvent -Query $query  -Action {Start-Process 'C:\Users\PwnableUser\Downloads\Syscall.exe'}