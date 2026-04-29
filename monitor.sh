#!/bin/bash

# Linux System Monitoring Script
# Author: DUONG THI NGOC THU

LOG_FILE="system_monitor.log"

echo "======================================" | tee -a $LOG_FILE
echo " Linux System Monitoring Report" | tee -a $LOG_FILE
echo " Date: $(date)" | tee -a $LOG_FILE
echo "======================================" | tee -a $LOG_FILE

echo "" | tee -a $LOG_FILE
echo "[1] CPU Load" | tee -a $LOG_FILE
uptime | tee -a $LOG_FILE

echo "" | tee -a $LOG_FILE
echo "[2] Memory Usage" | tee -a $LOG_FILE
free -h | tee -a $LOG_FILE

echo "" | tee -a $LOG_FILE
echo "[3] Disk Usage" | tee -a $LOG_FILE
df -h | tee -a $LOG_FILE

echo "" | tee -a $LOG_FILE
echo "[4] Network Check" | tee -a $LOG_FILE
ping -c 4 google.com | tee -a $LOG_FILE

echo "" | tee -a $LOG_FILE
echo "Monitoring completed. Result saved to $LOG_FILE"
