# Incident Response Runbook (Lab)

This runbook is a training playbook to demonstrate structured triage.

## 1) Triage
- What happened? (alert name, time window)
- Which host/user is involved?
- Is telemetry complete?

## 2) Scope
- Identify impacted endpoints/users
- Look for similar events across the environment
- Establish first-seen indicator

## 3) Containment (lab-safe)
- Isolate the source endpoint (disable NIC / quarantine VLAN)
- Disable suspect account (if appropriate)

## 4) Eradication
- Remove unauthorized tools
- Reset passwords where relevant (lab accounts only)
- Patch or harden configuration

## 5) Recovery
- Re-enable services/accounts
- Monitor for recurrence
- Document lessons learned

## 6) Post-incident
- Update detections
- Add prevention controls
- Record evidence in `docs/screenshots/`
