$DESKTOP = 'C:\Users\nickh\OneDrive\Desktop\'
$ACTIVE = $DESKTOP + '_active\'
$ARCHIVE = $DESKTOP + '_archive\'
$UTIL = $DESKTOP + '_util\'
$SCRIPTS = $DESKTOP + '_scripts\'
$MISC = $DESKTOP + '_misc\'

Remove-Item C:\Users\nickh\OneDrive\Desktop\*.lnk -Force -Verbose

# Requires Root
# Remove-Item C:\Users\Public\Desktop\*.lnk -Force -Verbose

[System.IO.Directory]::CreateDirectory($ACTIVE)
[System.IO.Directory]::CreateDirectory($ARCHIVE)
[System.IO.Directory]::CreateDirectory($UTIL)
[System.IO.Directory]::CreateDirectory($SCRIPTS)
[System.IO.Directory]::CreateDirectory($MISC)

Get-ChildItem -PATH $DESKTOP |
ForEach-Object -Process {
    if ($_.ToString().StartsWith('#')) {
        Move-Item -Path ($DESKTOP + $_.Name + '\') -Destination $ARCHIVE
    }
    elseif ($_.ToString().StartsWith('!')) {
        Move-Item -Path ($DESKTOP + $_.Name + '\') -Destination $ACTIVE
    }
    elseif ($_.ToString().StartsWith('@')) {
        Move-Item -Path ($DESKTOP + $_.Name + '\') -Destination $UTIL
    }
    elseif ($_.ToString().StartsWith('$')) {
        Move-Item -Path ($DESKTOP + $_.Name + '\') -Destination $SCRIPTS
    }
    elseif (-Not $_.ToString().StartsWith('_')) {
        Move-Item -Path ($DESKTOP + $_.Name) -Destination $MISC 
    }
}
