#!/bin/bash
# Installer Script Void-OSINT Simple

echo "Menginstall package yang diperlukan..."
pkg update -y
pkg install bash curl git -y
echo "Installasi selesai."
chmod +x void-osint.sh
echo "Jalankan: bash void-osint.sh"
