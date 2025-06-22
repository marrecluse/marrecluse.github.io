#!/bin/bash
# Manage system users: add, delete, list, lock, or unlock users

echo "User Manager"
echo "1) Add User"
echo "2) Delete User"
echo "3) List Users"
echo "4) Lock User"
echo "5) Unlock User"
read -p "Select an option: " option

case $option in
  1)
    read -p "Enter username: " username
    sudo adduser $username
    ;;
  2)
    read -p "Enter username: " username
    sudo deluser $username
    ;;
  3)
    cut -d: -f1 /etc/passwd
    ;;
  4)
    read -p "Enter username: " username
    sudo passwd -l $username
    ;;
  5)
    read -p "Enter username: " username
    sudo passwd -u $username
    ;;
  *)
    echo "Invalid option"
    ;;
esac
