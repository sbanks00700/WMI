﻿function Get-WmiNamespace {
     Param ($Namespace='ROOT') 
 
     Get-WmiObject -Namespace $Namespace -Class __NAMESPACE | ForEach-Object {       
          ($ns = '{0}\{1}' -f $_.__NAMESPACE,$_.Name) 
          Get-WmiNamespace -Namespace $ns 
      } 
} 
 
$WmiClasses = Get-WmiNamespace | ForEach-Object {
     $Namespace = $_ 
     Get-WmiObject -Namespace $Namespace -List |  
            ForEach-Object { $_.Path.Path } 
} | Sort-Object -Unique