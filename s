$Site = "https://www.dropbox.com/s/abol3rbkbeb34h7/ruf.exe?dl=1/"
$HttpContent = Invoke-WebRequest -Uri $Site
$HttpContent.Links | Where-Object {$_.innertext -eq "mobi"} | 
%{Invoke-WebRequest -Uri $_.href -OutFile "$(Get-Random 10001)$(".mobi")"}
