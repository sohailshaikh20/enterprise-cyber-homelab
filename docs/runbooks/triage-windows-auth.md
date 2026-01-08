# Triage: Windows Authentication Events

## Key events
- **4624** Successful logon
- **4625** Failed logon
- **4648** Explicit credential use
- **4720/4722/4723/4724** Account changes
- **4728/4729** Group membership changes

## Questions to answer
- Which account is involved?
- What is the logon type?
- What is the source hostname/IP?
- Is this pattern normal for the account?

## Fast containment (lab)
- Temporarily disable the account
- Isolate the source endpoint
- Increase logging if needed
