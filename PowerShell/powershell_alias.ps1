# Displaying files and directories
## Powershell command
function lld { Get-ChildItem -Directory} # list directories only
function llf { Get-ChildItem -File} # list files only
function lla { Get-ChildItem -Attributes Hidden, !Hidden} # list hidden and non-hidden files
## eza command
function tree { & eza -lh --icons=auto --tree --level=$args}

function cpwd { (pwd).path | Set-Clipboard }

# Git commands
function gs { & git status }
function gch { & git checkout $args }
function gac { & git add --all ; & git commit -m $args }

# App alias
Set-Alias -Name vi -Value nvim
function ink { & inkscape $args }
function draw { & draw.io $args }
