# Azure AD Connect

[ ] Change DNS to match DCs

## 1 - Join to domain

```powershell
Set-ExecutionPolicy Bypass; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/Hexatown/lab/master/azureadconnect/step001.ps1'))
```

