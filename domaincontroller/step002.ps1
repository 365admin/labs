 #>> ref: https://docs.microsoft.com/en-us/powershell/module/addsdeployment/install-addsforest?view=win10-ps

install-windowsfeature AD-Domain-Services 
Import-Module ADDSDeployment

Install-ADDSForest -CreateDnsDelegation:$false `
-DatabasePath "C:\Windows\NTDS" `
-DomainMode "Win2012R2" `
-DomainName  "lab.hexatown.com" `
-DomainNetbiosName "lab" `
-ForestMode "Win2012R2" `
-InstallDns:$true `
-LogPath "C:\Windows\NTDS" `
-NoRebootOnCompletion:$false `
-SysvolPath "C:\Windows\SYSVOL" `
-Force:$true
