:: Open PowerShell as an Administrator!!
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

:: Install Python 3.10 Using Chocolatey
choco install python --version=3.10.0
python --version
pip --version
python -m pip install --upgrade pip

:: Install FFmpeg Using Chocolatey
choco install ffmpeg
ffmpeg -version

pip install edge-tts
pip install PyPDF2
pip install pdfplumber
pip install PyMuPDF
pip install Pillow
pip uninstall Pillow
pip install Pillow==9.5.0
pip install --upgrade python-tgpt
