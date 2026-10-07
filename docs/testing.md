# Testing

## Network Testing

Connectivity was validated with:

- ping
- Test-NetConnection
- SSH

## DNS Testing

Commands included:

`Resolve-DnsName`

`nslookup`

## Active Directory Testing

Domain membership was verified using:

`Get-CimInstance Win32_ComputerSystem`

## Group Policy Testing

Policies were validated using:

`gpupdate /force`

`gpresult /r`

## Linux Service Testing

Services were checked using:

`systemctl is-active`

`systemctl status`

## Web Testing

Nginx was tested using:

`curl http://localhost`

## File Service Testing

Windows and Linux file services were tested by creating and retrieving files across SMB shares.

## Backup Testing

Backups were not only created but also extracted into a temporary restore directory to verify recovery.
