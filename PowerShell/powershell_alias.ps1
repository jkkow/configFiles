# Alias
Set-Alias -Name vi -Value nvim
function lld { Get-ChildItem -Directory}
function cpwd { (pwd).path | Set-Clipboard }

function gs { & git status }
function gch { & git checkout $args }
function gac { & git add --all ; & git commit -m $args }


function ink { & inkscape $args}
function draw {& draw.io $args}
