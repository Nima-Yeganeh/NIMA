Set-ExecutionPolicy Bypass -Scope Process -Force
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
choco --version
choco install git

choco install ffmpeg
ffmpeg -version

