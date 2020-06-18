$query = “SELECT * FROM Win32_Process WHERE Caption LIKE '%explore%' ”

Get-WmiObject -Query $query