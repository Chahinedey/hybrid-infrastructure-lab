# Active Directory

## Domain

DNS domain:

`chahine-lab.test`

NetBIOS name:

`CHAHINELAB`

Domain Controller:

`LAB-DC01`

## Organizational Units

Lab
- Users
- Groups
- Workstations
- Servers

## Users

- Alice Research
- Bob Research
- IT Admin

## Security Groups

### Research-Users
Used for research file access.

### IT-Admins
Used for administrative access.

## Domain Client

`LAB-WIN11` was joined to the Active Directory domain and moved into the Workstations OU.

Domain user authentication was verified using:

`CHAHINELAB\alice`

## Group Policy

A workstation policy named:

`LAB-Workstation-Baseline`

was linked to the workstation OU and validated on LAB-WIN11.
