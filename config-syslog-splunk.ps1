Get-VMHost $interpol | Set-VMHostAdvancedConfiguration -Name Syslog.global.logHost -Value udp.7972-u5ax.data.splunkstorm.com
Get-VMHost $interpol | Set-VMHostSysLogServer -SysLogServer udp.7972-u5ax.data.splunkstorm.com -SysLogServerPort 41212
Get-VMHost $interpol | Get-VMHostFirewallException | where {$_.Name.StartsWith('syslog-Splunk')} | Set-VMHostFirewallException -Enabled $true