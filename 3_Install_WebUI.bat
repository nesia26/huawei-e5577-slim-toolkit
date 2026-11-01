@echo off
title Flash WebUI MRE5 Slim
color 0E
echo ====================================================================
echo   FLASH WEBUI HUAWEI E5577CS-603 SLIM (17.100.15.02.28 MRE5)
echo ====================================================================
echo.
echo Membuka aplikasi installer WebUI resmi...
start "" "%~dp0Firmware\WEBUI_17.100.15.02.28_MRE5.exe"
echo.
echo Ikuti petunjuk di layar jendela sampai selesai 100%%.
echo Modem akan otomatis restart dan dashboard WebUI siap di http://192.168.8.1.
echo.
pause
