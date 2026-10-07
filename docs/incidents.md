# Troubleshooting Incidents

## Incident 1 - Nginx Configuration Failure

### Symptom
The Nginx service could not start.

### Diagnosis
`nginx -t`, `systemctl status`, and `journalctl` were used.

### Root Cause
An intentionally invalid Nginx directive was placed in a configuration file.

### Fix
The invalid configuration was removed.

### Verification
`nginx -t` succeeded, Nginx returned to active state, and HTTP content was available again.

---

## Incident 2 - Active Directory DNS Failure

### Symptom
The Windows 11 workstation could reach LAB-DC01 by IP but could not resolve its domain hostname.

### Diagnosis
The DNS client configuration showed the workstation was using public DNS instead of the domain controller.

### Root Cause
DNS was incorrectly set to 1.1.1.1.

### Fix
The DNS server was restored to 192.168.56.10.

### Verification
`LAB-DC01.chahine-lab.test` successfully resolved to 192.168.56.10.

---

## Incident 3 - Linux Permission Failure

### Symptom
An authorized research user received Permission denied on `/srv/research`.

### Diagnosis
Directory permissions were inspected with `ls -ld`.

### Root Cause
Group permissions had been removed.

### Fix
Permissions were restored to mode `2770`.

### Verification
linuxalice and linuxbob successfully regained access.
