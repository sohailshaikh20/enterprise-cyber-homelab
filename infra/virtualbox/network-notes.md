# VirtualBox network notes

Recommended: **Host-only** + **Internal Network** adapters.

Example:
- Adapter 1: NAT (optional for updates only; restrict egress)
- Adapter 2: Internal Network `LAN-AD`
- Adapter 3: Internal Network `LAN-CLIENTS` (as needed)

Avoid:
- Bridged adapters on vulnerable lab VMs
