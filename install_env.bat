@echo off
echo Get ready to install Playwright and Chromium. Pls don't close it...
curl -o python-installer.exe https://www.python.org/ftp/python/3.11.6/python-3.11.6-amd64.exe
start /wait python-installer.exe /quiet InstallAllUsers=1 PrependPath=1
del python-installer.exe
python --version
pip uninstall -y playwright
pip install playwright
playwright install
pip install --upgrade playwright
playwright install chromium
echo Successfully.
pause
