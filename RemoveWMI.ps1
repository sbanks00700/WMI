#List filters
#Get-WMIObject -Namespace root\Subscription -Class __EventFilter

#list Consumers
#Get-WMIObject -Namespace root\Subscription -Class CommandLineEventConsumer

#List bindings
#Get-WMIObject -Namespace root\Subscription -Class __FilterToConsumerBinding

##Removing WMI Subscriptions using Remove-WMIObject
#Filter
Get-WMIObject -Namespace root\Subscription -Class __EventFilter  | 
    Remove-WmiObject -Verbose
 
#Consumer
Get-WMIObject -Namespace root\Subscription -Class CommandLineEventConsumer  | 
    Remove-WmiObject -Verbose
 
#Binding
Get-WMIObject -Namespace root\Subscription -Class __FilterToConsumerBinding   | 
    Remove-WmiObject -Verbose