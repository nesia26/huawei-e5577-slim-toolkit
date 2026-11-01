@echo off
title Huawei E5577 Battery Bypass Command
color 0F
echo ====================================================================
echo   CARA BYPASS BATERAI VIA DC-UNLOCKER / TERMINAL DI WINDOWS
echo ====================================================================
echo.
echo Jika modem sudah hidup dan terdeteksi di Windows:
echo 1. Buka DC-Unlocker atau Huawei Toolbox (Run as Administrator)
echo 2. Klik "Detect Modem"
echo 3. Masukkan kode buka kunci:
echo      AT^DATALOCK="00000000"
echo 4. Masukkan kode aktivasi bypass baterai:
echo      AT^NVWREX=50364,0,4,01 00 00 00
echo.
echo 5. Tekan Enter sampai keluar respon "OK"
echo 6. Cabut baterai, modem sekarang bisa menyala langsung via charger USB 5V 2A!
echo.
pause
