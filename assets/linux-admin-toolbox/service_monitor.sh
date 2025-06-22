#!/bin/bash
# Monitor and restart a service if it is not running

SERVICE="apache2"  # Change this to the name of the service you want to monitor

if systemctl is-active --quiet $SERVICE; then
  echo "$SERVICE is running"
else
  echo "$(date): $SERVICE is down. Restarting..." | tee -a service_monitor.log
  sudo systemctl restart $SERVICE
fi
