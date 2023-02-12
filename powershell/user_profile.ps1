# Alias
New-Alias -Name v -Value nvim  # New-Alias for setting new alias
Set-Alias ll ls # Set-Alias for change existing alias to another
function lld { Get-ChildItem -Directory}
function gs { & git status }
function gch { & git checkout $args }
function gac { & git add --all ; & git commit -m $args }
function cwd { (pwd).path | Set-Clipboard }

Import-Module Terminal-Icons

Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

Invoke-Expression (&starship init powershell)
