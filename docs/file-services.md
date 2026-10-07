# File Services

## Linux Samba Share

Share name:

`Research`

Linux path:

`/srv/research`

Access is restricted to members of the `research` group.

Windows clients were able to create files through SMB and the resulting files were verified on the Linux filesystem.

## Windows File Share

Server:

`LAB-DC01`

Share:

`\\LAB-DC01\ResearchWin`

Path:

`C:\Shares\Research`

Permissions use both SMB share permissions and NTFS permissions.

Relevant Active Directory groups:

- Research-Users
- IT-Admins
- Domain Admins

A file created from LAB-WIN11 through the SMB share was verified on LAB-DC01 with ownership belonging to the domain user.
