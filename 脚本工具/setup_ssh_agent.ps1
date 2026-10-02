# Setup SSH agent and load key
$ErrorActionPreference = "SilentlyContinue"
Set-Service -Name ssh-agent -StartupType Automatic
Start-Service -Name ssh-agent
Start-Sleep -Seconds 1
ssh-add "$env:USERPROFILE\.ssh\id_ed25519"
Write-Output "=== ssh-add result ==="
ssh-add -l
