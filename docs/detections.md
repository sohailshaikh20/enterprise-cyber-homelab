# Detections

Example detections you can implement in your SIEM.
Written at a conceptual level so they can be adapted to Wazuh, Elastic, or Splunk.

## Data sources
- Windows Security Event Log (Auth, account changes)
- Sysmon (process creation, network connections)
- DNS logs (from DC) — optional
- Firewall logs — optional

## Detection ideas mapped to MITRE ATT&CK

### T1110 Brute Force / Password Spray (simulation)
**Signal**
- Burst of failed logons across multiple users from a single host
- Multiple `4625` events with consistent source IP/hostname

**Tuning**
- Require threshold (e.g., 10+ failures in 5 minutes)
- Exclude expected admin tooling in your lab

**Response**
- Identify impacted accounts and the source endpoint
- Contain the source endpoint (lab quarantine)
- Improve password policy and auditing

---

### T1078 Valid Accounts (anomalous admin logon)
**Signal**
- Successful logon `4624` for privileged account from unusual workstation
- Logon type indicates remote/network usage

**Tuning**
- Maintain allow-list of admin jump host(s)
- Alert on admin logons outside normal hours (optional)

---

### T1059 Command and Scripting Interpreter (suspicious PowerShell)
**Signal**
- Sysmon process creation for `powershell.exe` with suspicious flags
- Unusual parent process spawning PowerShell

**Tuning**
- Baseline legitimate admin scripts
- Correlate with endpoint role and user

---

## Evidence checklist
For each detection you add, capture:
- Screenshot of the rule/query
- Screenshot of matching log events
- Notes about tuning and false positives
