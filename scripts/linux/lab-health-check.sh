#!/bin/bash

echo "===== LAB HEALTH CHECK ====="
echo "Time: $(date)"
echo

echo "--- Host ---"
hostname
uptime

echo
echo "--- Services ---"

for service in ssh nginx smbd; do
    if systemctl is-active --quiet "$service"; then
        echo "$service: OK"
    else
        echo "$service: FAILED"
    fi
done

echo
echo "--- Disk Usage ---"
df -h /

echo
echo "--- Network ---"

if ping -c 1 -W 2 192.168.56.10 >/dev/null 2>&1; then
    echo "LAB-DC01 (.10): REACHABLE"
else
    echo "LAB-DC01 (.10): UNREACHABLE"
fi

if ping -c 1 -W 2 192.168.56.30 >/dev/null 2>&1; then
    echo "LAB-WIN11 (.30): REACHABLE"
else
    echo "LAB-WIN11 (.30): UNREACHABLE"
fi
