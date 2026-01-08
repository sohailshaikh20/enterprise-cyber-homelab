#!/usr/bin/env bash
set -euo pipefail

echo "[*] Bootstrap Kali (lab)"
sudo apt-get update -y
sudo apt-get install -y git curl jq net-tools dnsutils

echo "[*] Optional: analysis utilities"
sudo apt-get install -y wireshark tshark

echo "[+] Done. Take a snapshot after updates."
