# Scenario 01 — Network Enumeration (Lab-safe)

## Objective
Demonstrate structured host discovery and service enumeration **inside the lab only**, then verify telemetry and detections.

## Steps (high level)
1. Identify the target subnet(s) from your topology diagram.
2. Run a basic discovery scan **only** against lab ranges you own/control.
3. Enumerate open services on discovered hosts.
4. Record findings: host, role, services.

## Evidence checklist
- [ ] Screenshot: host discovery results
- [ ] Screenshot: service enumeration summary
- [ ] Screenshot: SIEM shows telemetry from scanning host
- [ ] Notes: what was expected vs unexpected

## Detection ideas
- Alert on unusual connection bursts from a client endpoint
- Track new/rare service exposure (ports) on servers
