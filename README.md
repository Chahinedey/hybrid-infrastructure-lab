# Hybrid IT Infrastructure & System Administration Lab

## Overview

This project is a multi-system IT infrastructure lab built with VMware Workstation, Windows Server 2025, Windows 11 Enterprise, and Ubuntu Server.

The goal was to build and administer a small hybrid environment covering networking, Windows domain services, Linux administration, security, file services, automation, backup and recovery, and troubleshooting.

## Architecture

| System | IP Address | Role |
|---|---|---|
| Management Host | 192.168.56.1 | Central administration workstation |
| VMware NAT Gateway | 192.168.56.2 | VMnet8 gateway |
| LAB-DC01 | 192.168.56.10 | AD DS, DNS, GPO, SMB |
| ubuntu-server | 192.168.56.20 | SSH, Nginx, Samba, backup, monitoring |
| LAB-WIN11 | 192.168.56.30 | Domain client and test workstation |

Network: `192.168.56.0/24`

## Core Components

- VMware Workstation virtual infrastructure
- Static IPv4 addressing
- Central SSH administration
- Windows Server 2025
- Active Directory Domain Services
- DNS
- Organizational Units and security groups
- Group Policy
- Windows 11 domain client
- Windows SMB and NTFS permissions
- Ubuntu Server administration
- Linux users, groups and permissions
- SSH public-key authentication
- SSH hardening
- UFW firewall
- Nginx
- Samba
- Bash automation
- Backup and restore testing
- systemd services and timers
- PowerShell automation
- Incident diagnosis and recovery

## Active Directory Domain

Domain:

`chahine-lab.test`

Domain Controller:

`LAB-DC01`

Examples of managed objects:

- Alice Research
- Bob Research
- IT Admin
- Research-Users
- IT-Admins
- LAB-WIN11

## Linux Services

Ubuntu Server provides:

- SSH remote administration
- Nginx web service
- Samba file sharing
- UFW firewalling
- Automated backups
- Infrastructure health checks

## File Services

Two file-sharing scenarios were implemented:

1. Linux Samba share at `/srv/research`
2. Windows SMB share `\\LAB-DC01\ResearchWin`

Access is controlled through groups and filesystem/share permissions.

## Automation

Linux:
- `research-backup.sh`
- `lab-health-check.sh`

Windows:
- `Export-LabInventory.ps1`

## Troubleshooting

Three controlled incidents were created and recovered:

1. Broken Nginx configuration
2. Incorrect Active Directory client DNS
3. Incorrect Linux directory permissions

Each incident followed:

Detect ? Diagnose ? Root Cause ? Fix ? Verify

## Skills Demonstrated

VMware Workstation, TCP/IP, NAT, static addressing, Windows Server, Active Directory, DNS, Group Policy, PowerShell, SMB, NTFS, Ubuntu Server, Linux permissions, SSH, UFW, Nginx, Samba, Bash, systemd, backup and recovery, monitoring, troubleshooting, Git, and technical documentation.

<!-- SCREENSHOT-EVIDENCE-START -->

## Screenshot Evidence

The lab is supported by **37 screenshots** documenting configuration, validation, security controls, cross-platform services, automation, backup/restore testing, and controlled troubleshooting incidents.

The complete evidence gallery is available here:

**[View the complete screenshot evidence →](docs/evidence.md)**

Raw evidence files are stored in:

`screenshots/raw/`

<!-- SCREENSHOT-EVIDENCE-END -->

