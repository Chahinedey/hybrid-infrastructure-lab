# Architecture

## Virtual Infrastructure

The lab runs inside VMware Workstation using VMnet8.

Network:

`192.168.56.0/24`

Gateway:

`192.168.56.2`

## Systems

### LAB-DC01
- Windows Server 2025
- IP: 192.168.56.10
- Active Directory Domain Controller
- DNS server
- Group Policy
- Windows SMB services

### ubuntu-server
- Ubuntu Server
- IP: 192.168.56.20
- SSH
- Nginx
- Samba
- UFW
- Bash automation
- Backup and monitoring

### LAB-WIN11
- Windows 11 Enterprise
- IP: 192.168.56.30
- Joined to chahine-lab.test
- Domain workstation
- GPO and file-share testing

## Logical Topology

Management Host
    |
VMware VMnet8
192.168.56.0/24
    |
    +-- LAB-DC01      192.168.56.10
    +-- ubuntu-server 192.168.56.20
    +-- LAB-WIN11     192.168.56.30
