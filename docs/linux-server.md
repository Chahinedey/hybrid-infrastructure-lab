# Linux Server

## System

Hostname:

`ubuntu-server`

IP:

`192.168.56.20`

## Users and Groups

Local lab users:

- linuxalice
- linuxbob

Group:

`research`

## Shared Directory

Path:

`/srv/research`

Ownership:

`root:research`

Permissions:

`2770`

The setgid bit ensures new files inherit the research group.

Authorized group members can access the directory while unauthorized users receive Permission denied.

## Services

The server provides:

- SSH
- Nginx
- Samba
- UFW
- automated backup
- health monitoring
