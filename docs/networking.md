# Networking

## Addressing Plan

| Device | Address |
|---|---|
| Host VMnet8 Adapter | 192.168.56.1 |
| NAT Gateway | 192.168.56.2 |
| LAB-DC01 | 192.168.56.10 |
| ubuntu-server | 192.168.56.20 |
| LAB-WIN11 | 192.168.56.30 |

Subnet mask:

`255.255.255.0`

CIDR:

`/24`

## Design

Infrastructure systems use static addresses outside the main DHCP allocation range.

The management workstation centrally administers the three virtual machines through SSH.

Cross-platform connectivity was tested between:

- Windows Server ? Ubuntu
- Windows Server ? Windows 11
- Ubuntu ? Windows 11

Windows Firewall rules were scoped to the lab network instead of disabling the firewall.
