Import-Module ActiveDirectory
Import-Module DnsServer
Import-Module GroupPolicy
$Out = "C:\LabReports"
New-Item -ItemType Directory -Path $Out -Force | Out-Null
Get-ADUser -Filter * -SearchBase "OU=Lab,DC=chahine-lab,DC=test" | Select-Object Name,SamAccountName,Enabled | Export-Csv "$Out\AD-Users.csv" -NoTypeInformation
Get-ADGroup -Filter * -SearchBase "OU=Lab,DC=chahine-lab,DC=test" | Select-Object Name,GroupScope,GroupCategory | Export-Csv "$Out\AD-Groups.csv" -NoTypeInformation
Get-ADComputer -Filter * | Select-Object Name,DNSHostName,Enabled | Export-Csv "$Out\Computers.csv" -NoTypeInformation
Get-DnsServerZone | Select-Object ZoneName,ZoneType,IsDsIntegrated | Export-Csv "$Out\DNS-Zones.csv" -NoTypeInformation
Get-GPO -All | Select-Object DisplayName,GpoStatus,CreationTime | Export-Csv "$Out\GPOs.csv" -NoTypeInformation
Write-Host "Infrastructure report completed."
Get-ChildItem $Out
