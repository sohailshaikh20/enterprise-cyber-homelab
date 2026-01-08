\
<# 
Export Windows event logs for lab evidence collection.
Safe: reads local logs and writes to a folder.
#>

param(
  [string]$OutDir = ".\exports\logs"
)

New-Item -ItemType Directory -Force -Path $OutDir | Out-Null

Write-Host "[*] Exporting Security log (may require admin)..."
wevtutil epl Security "$OutDir\Security.evtx"

Write-Host "[*] Exporting System log..."
wevtutil epl System "$OutDir\System.evtx"

Write-Host "[*] Exporting Application log..."
wevtutil epl Application "$OutDir\Application.evtx"

Write-Host "[+] Export complete: $OutDir"
