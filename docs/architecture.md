# Architecture

This lab mirrors a small enterprise network while staying safe and reproducible.

## Networks (example)
- **LAN-AD (10.10.10.0/24)**: Domain controller + directory services
- **LAN-CLIENTS (10.10.20.0/24)**: Windows endpoints
- **LAN-SEC (10.10.30.0/24)**: SIEM / logging server
- **ATTACK-NET (10.10.40.0/24)**: Attacker VM (isolated)

> Use **host-only/internal** networking. Avoid bridged networking for training labs.

## Naming (example)
- Domain: `LAB.LOCAL`
- DC: `DC01`
- Client: `WIN10-01`
- SIEM: `SEC01`
- Attacker: `KALI01`

## Telemetry flow
1. Endpoints generate Windows logs (Security + Sysmon)
2. Agent/forwarder ships logs to SIEM
3. SIEM correlation produces alerts and dashboards

## Build checklist
- [ ] DC promoted and DNS working
- [ ] Endpoint joined to domain
- [ ] Time sync verified (Kerberos sensitive)
- [ ] Sysmon installed and logging
- [ ] SIEM receiving events from all hosts
- [ ] Snapshot created (baseline)
