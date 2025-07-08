---
layout: post
title: "Mastering Linux Command Line — Tutorial"
date: 2025-07-08
categories: [tutorial, linux]
tags: [linux, bash, terminal, recluze, command-line]
---

Linux Command Line playlist by sir @recluze is a excellent crash course for beginners. It goes straight into the essential terminal commands and common Linux tasks. This is a structured guide based on his lessons to help you quickly master the CLI.

---

## 🎯 1. What You’ll Learn

- Basic navigation and file management (`cd`, `ls`, `cp`, `mv`, `rm`)
- File viewing and editing (`cat`, `less`, `head`, `tail`, `nano`)
- Permission and ownership (`chmod`, `chown`, `sudo`)
- Process and service management (`ps`, `top`, `kill`, `systemctl`)
- Networking basics (`ping`, `netstat`, `ifconfig` / `ip`)
- Package management (APT on Debian/Ubuntu)
- Using wildcards, piping, and redirection

---
 > Disclaimer: This post is not for very beginners.
## 🔧 2. Recommended Practice Flow

### ✅ Step 1: Terminal Navigation

```bash
mkdir linux-tutorial
cd linux-tutorial
touch file{1..3}.txt
ls -l
ls -a
```
creating multiple files qiuckly. Replace ``` .``` with ``` , ```for specific file numbers
### ✅ Step 2: File Viewing & Edits

```bash
echo "Hello Linux" > file1.txt
cat file1.txt
head file{1..2}.txt
tail file{2..3}.txt
more file1.txt
less file1.txt
```
**`echo` and `>`** used for inserting the text into file, but using ``` > ``` will overwrite all existing content in the file with the new. So use ``` >> ``` instead, to append (adding text at the end).
**cat** used to concatenate and display file content on the terminal.
**head** for printing first 10 lines of the text. `10` is by default, you can change it to different using i.e ``` -n 15 ```
**tail** same like head but for last 10 lines. use ```tail -f filename``` if you want to see if new lines of text are being added like in case of logs.
**more** for printing the text of file which have more than 1 pages, use `spacebar` to go to the next page.
**less** improved version of `more` involving use of arrow keys for scrolling up and down.
Use `nano` or `vim` to edit files.

### ✅ Step 3: Permissions & Ownership

```bash
chmod 640 file1.txt
chown $USER:$USER file2.txt
```
**chmod** Change file permissions (e.g., read/write/execute for user/group/others)
**chown** for changing ownership and group of the file.
### ✅ Step 4: Process & Services

```bash
ps aux | grep ssh
top
kill -9 <PID>
sudo systemctl status ssh
sudo systemctl start ssh
```
**ps aux** show all processes and filter using grep utility.
**top** Live real-time view of processes.
**kill -9** force kill the process
**systemctl** start, stop, restart and check status of the system services.


### ✅ Step 5: Networking Commands

```bash
ping google.com
netstat -tuln
ip addr show
```
**ping** test internet connectivity
**netstat** show open ports and connections, `-tuln` shows TCP/UDP listening
**ip addr show** display network interfaces and IPs

### ✅ Step 6: Package Management (Debian/Ubuntu)

```bash
sudo apt update
sudo apt install htop
sudo apt remove htop
```

---

## 🚀 3. Build a Mini Project: "System Info Snapshot Script"

```bash
#!/bin/bash
echo "=== System Snapshot ==="
echo "Date: $(date)"
echo "Uptime: $(uptime -p)"
echo "Kernel: $(uname -r)"
echo "Memory:"
free -h
echo "Disk Usage:"
df -h
echo "Top 5 processes:"
ps aux --sort=-%mem | head -n 6
```

- Save as `sys_snapshot.sh`
- Make it executable: `chmod +x sys_snapshot.sh`
- Run it to generate a quick overview of your system.

This script provides a snapshot of system health — useful for monitoring or quick system audits.
---

## 📘 4. Why This Matters

- **Foundational Skills**: Every software or DevOps role requires CLI proficiency.
- **Automation Roots**: Bash + cron = simple yet powerful automation.
- **Confidence for Next Steps**: With this knowledge, we are ready for Docker, scripting, or server management.

---

 [Watch the Full Playlist on YouTube](https://youtube.com/playlist?list=PLnd7R4Mcw3rJzeqlaJa3KNQZEuUuKPZjf)
