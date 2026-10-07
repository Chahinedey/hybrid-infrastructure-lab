# Automation

## Linux Automation

### research-backup.sh

Creates timestamped compressed backups of `/srv/research`.

Responsibilities include:

- archive creation
- timestamping
- backup retention
- automated execution

### lab-health-check.sh

Checks:

- hostname
- system status
- SSH service
- Nginx
- Samba
- disk usage
- connectivity to LAB-DC01
- connectivity to LAB-WIN11

systemd timers are used to schedule recurring automation.

## Windows Automation

### Export-LabInventory.ps1

Exports infrastructure information including:

- Active Directory users
- Active Directory groups
- computers
- DNS zones
- Group Policy Objects

The generated reports are stored under:

`C:\LabReports`
