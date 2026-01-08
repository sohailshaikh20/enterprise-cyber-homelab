# Threat Model (Training Lab)

## Assets
- Domain Controller (AD DS, DNS)
- Windows endpoints (auth events, process telemetry)
- SIEM/log server (central telemetry)
- Firewall/router (optional segmentation)

## Assumptions
- Lab is isolated and owned/controlled by the operator
- No production data is used
- Snapshots are available for rollback

## Threats practiced (high level)
- Credential misuse (failed logons, password spray simulation)
- Host discovery and basic enumeration
- Suspicious remote admin patterns
- Persistence indicators (scheduled tasks/services) — simulated in docs only
- Logging/visibility gaps and how to fix them

## Defensive goals
- Detect abnormal authentication patterns
- Monitor privileged group changes
- Spot new services/tasks and suspicious binaries
- Maintain reliable telemetry and time sync
