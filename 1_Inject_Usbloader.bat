@echo off
title Huawei E5577 Emergency Loader Injector
color 0B
echo ====================================================================
echo   HUAWEI E5577 EMERGENCY USB LOADER INJECTOR (BALONG V7R11)
echo ====================================================================
echo.
echo Pastikan modem sudah terhubung via Testpoint ke USB Windows:
echo (Device Manager - Ports (COM ^& LPT) terdeteksi "HUAWEI Mobile Connect" / "Emergency Port")
echo.
set /p com_port="Masukkan nomor COM port (misal: COM3 atau cukup 3): "

:: Hapus kata COM jika ada
set com_num=%com_port:COM=%
set com_num=%com_num:com=%

echo.
echo [*] Menyuntikkan usbloader-5577.bin ke COM%com_num%...
"%~dp0Tools\balong_usbdload.exe" -pCOM%com_num% "%~dp0Tools\usbloader-5577.bin"

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo [-] GAGAL menginjeksi loader! Cek nomor COM port di Device Manager atau coba port USB lain.
) else (
    echo.
    echo [+] SUKSES! Tunggu 5-10 detik sampai Device Manager mendeteksi port baru:
    echo     - HUAWEI Mobile Connect - 3G Application Interface
    echo     - HUAWEI Mobile Connect - 3G PC UI Interface
    echo.
    echo Sekarang lanjutkan ke langkah: 2_Install_Firmware.bat
)
echo.
pause
