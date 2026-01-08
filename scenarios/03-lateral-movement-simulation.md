# Scenario 03 — Lateral Movement (Simulation)

## Objective
Practice detecting suspicious remote admin patterns and validating least privilege.

## Safe simulation approach
Use legitimate remote administration in the lab and observe how it appears in logs.

## Evidence checklist
- [ ] Screenshot: `4624` showing remote source host
- [ ] Screenshot: Sysmon process creation (if enabled)
- [ ] Screenshot: alert/detection

## Detection ideas
- New admin logons from non-approved workstations
- Remote logon types for privileged accounts
