#!/usr/bin/env bash
set -euo pipefail

echo "[*] Bootstrap Ubuntu server (SIEM/support)"
sudo apt-get update -y
sudo apt-get install -y git curl jq net-tools dnsutils ufw

echo "[*] Enable firewall (adjust rules for lab subnets)"
sudo ufw --force enable || true

echo "[+] Done. Take a snapshot after updates."
