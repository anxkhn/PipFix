@echo off
for /F "delims=" %%i in ('pip freeze ^| findstr /V /C:"pip" /C:"setuptools" /C:"wheel"') do pip uninstall -y "%%i"
