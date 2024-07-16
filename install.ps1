$link = "https://github.com/MoonHQ/Installer/releases/latest/download/MooncordInstallerCli.exe"

$outfile = "$env:TEMP\MooncordInstallerCli.exe"

Write-Output "Downloading installer to $outfile"

Invoke-WebRequest -Uri "$link" -OutFile "$outfile"

Write-Output ""

Start-Process -Wait -NoNewWindow -FilePath "$outfile"

# Cleanup
Remove-Item -Force "$outfile"
