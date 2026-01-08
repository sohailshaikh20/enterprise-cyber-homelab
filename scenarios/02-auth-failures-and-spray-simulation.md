# Scenario 02 — Authentication Failures & Password Spray (Simulation)

## Objective
Simulate an authentication failure burst pattern and build a detection + triage workflow.

## Safety note
This is intentionally **non-operational** guidance. Generate failures in benign ways (wrong password attempts) inside your lab.

## Evidence checklist
- [ ] Screenshot: detection rule/query
- [ ] Screenshot: sample `4625` events (failed logons)
- [ ] Screenshot: timeline of failures + source host
- [ ] Notes: thresholds and tuning

## Expected artifacts
- DC/Windows Security: `4625` failed logons
- Potentially `4771` depending on auth flow

## Triage
See: `docs/runbooks/triage-windows-auth.md`
