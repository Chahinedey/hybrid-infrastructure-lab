# Security

## Network Security

Windows Firewall remained enabled.

Inbound access was explicitly allowed for required lab traffic rather than globally disabling the firewall.

## Linux Firewall

UFW restricts inbound access to required services from the lab network.

Examples:

- SSH
- HTTP
- SMB

## SSH

Ubuntu remote administration uses SSH public-key authentication.

SSH hardening includes:

- PermitRootLogin no
- PasswordAuthentication no
- PubkeyAuthentication yes
- MaxAuthTries 3

## Access Control

Linux filesystem access is group-based.

Windows file access uses Active Directory groups together with SMB and NTFS permissions.

Passwords, private SSH keys, and other credentials are excluded from the Git repository.
