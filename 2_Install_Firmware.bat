@echo off
title Flash Firmware E5577Cs-603 Slim
color 0A
echo ====================================================================
echo   FLASH FIRMWARE HUAWEI E5577CS-603 SLIM (21.333.01.00.00 AT-MOD)
echo ====================================================================
echo.
echo Pastikan usbloader sudah berhasil di-inject (Langkah 1).
echo Membuka aplikasi installer firmware resmi...
start "" "%~dp0Firmware\E5577CS-603+21.333.01.00.00-AT-MOD.exe"
echo.
echo Ikuti petunjuk di layar jendela yang muncul sampai proses flash selesai 100%%.
echo Setelah selesai, jalankan langkah: 3_Install_WebUI.bat
echo.
pause
