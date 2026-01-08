# Triage: DNS Activity (DC)

## Signals
- High NXDOMAIN rate
- Suspicious domain patterns (randomized subdomains)
- New/rare domains queried by servers

## Steps
1. Identify source host(s) generating DNS
2. Review query types and frequency
3. Correlate with endpoint process/network telemetry
4. Contain if confirmed suspicious (lab quarantine)
