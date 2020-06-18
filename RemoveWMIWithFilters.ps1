##Removing WMI Subscriptions using Remove-WMIObject
#Filter
Get-WMIObject -Namespace root\Subscription -Class __EventFilter -Filter "Name='ServiceFilter'" | 
    Remove-WmiObject -Verbose
 
#Consumer
Get-WMIObject -Namespace root\Subscription -Class LogFileEventConsumer -Filter "Name='ServiceConsumer'" | 
    Remove-WmiObject -Verbose
 
#Binding
Get-WMIObject -Namespace root\Subscription -Class __FilterToConsumerBinding -Filter "__Path LIKE '%ServiceFilter%'"  | 
    Remove-WmiObject -Verbose