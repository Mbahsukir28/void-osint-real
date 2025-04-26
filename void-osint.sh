#!/bin/bash
# VOID OSINT SIMPLE TOOL

clear
echo -e "\e[1;35m"
echo "      __      ___      _ ___ _ "
echo "     /__\    / __\__ _| | __| |"
echo "    / \//   / /  / _\` | | _|| |"
echo "   / _  \  / /__| (_| | | | | |___"
echo "   \/ \_/  \____/\__,_|_|_| |_____/"
echo ""
echo -e "\e[1;36m        VOID-OSINT SIMPLE TOOL\e[0m"
echo ""
echo "1. Lacak Nama (Google Dork)"
echo "2. Cari Sosial Media"
echo "3. Cek Email Leak"
echo "4. Keluar"
read -p "Pilih opsi => " opsi

if [ $opsi -eq 1 ]; then
    read -p "Masukkan nama target: " target
    termux-open-url "https://www.google.com/search?q=${target}"
elif [ $opsi -eq 2 ]; then
    read -p "Masukkan username: " user
    termux-open-url "https://www.instagram.com/${user}"
elif [ $opsi -eq 3 ]; then
    read -p "Masukkan email target: " email
    termux-open-url "https://haveibeenpwned.com/unifiedsearch/${email}"
else
    echo "Keluar..."
    exit 0
fi
