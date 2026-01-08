#!/usr/bin/env bash
set -euo pipefail

DC="${1:-DC01}"
SIEM="${2:-SEC01}"

echo "=== Lab validation (Linux) ==="
echo "[*] Host: $(hostname)"
echo "[*] Date: $(date -Is)"
echo ""

echo "[*] DNS resolution"
getent hosts "$DC" || true
getent hosts "$SIEM" || true
echo ""

echo "[*] Connectivity"
ping -c 2 "$DC" || true
ping -c 2 "$SIEM" || true
echo ""

echo "[+] Done."
