# Huawei E5577Cs-603 (SLIM) - Complete Recovery & Modding Toolkit

Toolkit lengkap untuk unbrick, flashing firmware modifikasi, WebUI, dan aktivasi fitur **Bypass Baterai** pada MiFi **Huawei E5577Cs-603 (Bolt Slim 2 / Huawei E5577 Slim)** berbasis chipset Balong Hi6921 V7R11.

---

## 📦 Isi Paket Toolkit

1. **`Firmware/`**:
   - `E5577CS-603+21.333.01.00.00-AT-MOD.exe`: Firmware resmi modifikasi Slim (Bypass Ready, Open All Operator, Open AT Command).
   - `WEBUI_17.100.15.02.28_MRE5.exe`: WebUI MRE5 Slim (Ukuran partisi 5.16 MB, pas dengan batas NAND Slim 8.0 MB tanpa error 0x0C).
   - `E5577_Slim_Mod.exe`: Arsip original installer E5577 Slim Mod.
2. **`Tools/`**:
   - `balong_usbdload.exe`: Loader darurat USB Balong untuk Windows.
   - `usbloader-5577.bin`: Bootloader darurat resmi Balong V7R11 untuk E5577.
   - `balong_flash.exe`: Flasher alternatif partisi Balong.
3. **Batch Scripts (1-Klik untuk Windows)**:
   - `1_Inject_Usbloader.bat`
   - `2_Install_Firmware.bat`
   - `3_Install_WebUI.bat`
   - `4_Bypass_Battery_Info.bat`

---

## 🛠️ Langkah-Langkah Eksekusi di Windows (Step-by-Step)

### 1. Persiapan Driver di Windows
Sebelum memulai, pastikan Windows Anda sudah terpasang driver Huawei:
- **HUAWEI DataCard Driver / FC Serial Driver** atau pasang aplikasi **HUAWEI Mobile Partner**.
- Tanpa driver ini, port COM darurat tidak akan terbaca di Windows.

---

### 2. Hubungkan Modem via Testpoint (Emergency Mode)
1. Buka tutup casing belakang dan lepaskan baterai dari modem (**proses ini dilakukan tanpa baterai**).
2. Temukan titik **Testpoint** (titik emas kecil di samping konektor baterai/kartu SIM).
3. Hubungkan (short) titik Testpoint tersebut ke **Ground / GND** (bodi kaleng pelindung atau bodi luar port USB) menggunakan pinset logam atau ujung paperclip.
4. Sambil titik tersebut ditahan terhubung ke ground, **colokkan kabel USB ke port USB komputer Windows**.
5. Tahan 2-3 detik lalu lepaskan pinsetnya.
6. Buka **Device Manager** di Windows, periksa bagian **Ports (COM & LPT)**:
   - Akan muncul port baru, biasanya bernama `HUAWEI Mobile Connect - DownLoad Port (COMx)` atau `BOM / Emergency Port (COMx)`.
   - Catat nomor COM tersebut (misalnya `COM3`).

---

### 3. Eksekusi Flashing

#### Langkah 1: Inject USB Loader
- Klik kanan file `1_Inject_Usbloader.bat` lalu pilih **Run as Administrator**.
- Masukkan nomor COM yang tercatat di Device Manager (misal: ketik `3` lalu Enter).
- Loader akan dikirimkan ke modem dalam 2 detik.
- Tunggu sekitar 5-10 detik. Di Device Manager akan otomatis muncul 2 port baru:
  - `HUAWEI Mobile Connect - 3G Application Interface`
  - `HUAWEI Mobile Connect - 3G PC UI Interface`

#### Langkah 2: Flash Firmware Modifikasi
- Jalankan file `2_Install_Firmware.bat`.
- Jendela resmi flasher firmware akan terbuka.
- Klik tombol **Start** / ikuti instruksi di layar sampai proses penulisan firmware selesai 100%.

#### Langkah 3: Flash WebUI MRE5
- Jalankan file `3_Install_WebUI.bat`.
- Klik tombol **Start** / ikuti instruksi di layar sampai WebUI selesai di-flash.
- Modem akan otomatis reboot dan menyala ke menu utama.

---

## ⚡ Cara Aktivasi Bypass Baterai (Menyala Langsung via Kabel USB)

Jika firmware sudah terpasang, Anda bisa mengaktifkan bypass baterai secara permanen via AT Command:
1. Hubungkan modem ke Windows via USB.
2. Buka aplikasi terminal seperti **DC-Unlocker** atau **Huawei Toolbox** (Run as Administrator).
3. Klik tombol **Detect Modem** (kaca pembesar) sampai modem terbaca.
4. Di jendela terminal bagian bawah, ketik:
   ```text
   AT^DATALOCK="00000000"
   ```
   (Tekan Enter, pastikan keluar balasan `OK`)
5. Kemudian masukkan kode aktivasi bypass baterai NVRAM 50364:
   ```text
   AT^NVWREX=50364,0,4,01 00 00 00
   ```
   (Tekan Enter, pastikan keluar balasan `OK`)
6. Selesai! Cabut baterai, modem sekarang bisa menyala langsung hanya menggunakan kabel charger HP 5V 2A!

---

## 🌐 Akses WebUI Dashboard
Setelah menyala:
- Sambungkan WiFi ke modem (SSID dan Password ada pada stiker di balik tutup belakang).
- Buka browser ke alamat: **`http://192.168.8.1`**
