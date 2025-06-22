#!/bin/bash
# Network audit using nmap, ss, and ufw

echo "Scanning network for open ports..."
sudo nmap -sS -O 127.0.0.1

echo "Current network connections:"
ss -tuln

echo "Firewall status (UFW):"
sudo ufw status verbose
