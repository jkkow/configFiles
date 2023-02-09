# Alias
New-Alias -Name vim -Value nvim  # New-Alias for setting new alias
Set-Alias ll ls # Set-Alias for change existing alias to another
function lld { Get-ChildItem -Directory}
function gs { & git status }
function gcout { & git checkout $args }
function ac { & git commit -am $args }

Import-Module Terminal-Icons

Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView

Invoke-Expression (&starship init powershell)
