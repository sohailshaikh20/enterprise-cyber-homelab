\
<# 
Validate basic lab assumptions from a Windows endpoint.
Safe: performs local checks + basic connectivity tests.
#>

param(
  [string]$Domain = "LAB.LOCAL",
  [string]$DC = "DC01",
  [string]$Siem = "SEC01"
)

Write-Host "=== Lab validation ==="
Write-Host "Computer: $env:COMPUTERNAME"
Write-Host "User: $env:USERNAME"

Write-Host "`n[*] Domain membership:"
whoami /fqdn

Write-Host "`n[*] Time sync (Kerberos-sensitive):"
w32tm /query /status

Write-Host "`n[*] DNS resolution:"
nslookup $DC
nslookup $Siem

Write-Host "`n[*] Connectivity:"
Test-Connection -Count 2 $DC
Test-Connection -Count 2 $Siem

Write-Host "`n[+] Validation complete."
