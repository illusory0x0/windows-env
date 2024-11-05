# Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete
Set-PSReadLineOption -EditMode Emacs

# PSFzf
# Install-Module psfzf
# replace 'Ctrl+t' and 'Ctrl+r' with your preferred bindings:
Set-PsFzfOption -PSReadlineChordProvider 'Ctrl+t' -PSReadlineChordReverseHistory 'Ctrl+r'

Set-PSReadLineKeyHandler -Key Tab -ScriptBlock { Invoke-FzfTabCompletion }