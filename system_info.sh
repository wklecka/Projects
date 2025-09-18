#!/bin/bash

clear
echo "SYSTEM INFORMATION REPORT"
echo ""
echo "Date: $(date | awk '{print $2, $3}'), $(date | awk '{print $6}')"
echo "Time: $(date | awk '{print $4}')"
echo "Hostame: $(hostname)"
echo "OS: $(sw_vers -n productName)"
echo "Kernel Version: $(uname -r)"
echo "CPU: $(sysctl -n machdep.cpu.brand_string)"
echo "IPv4: $(ifconfig | grep "inet " | awk 'NR==2 {print $2}')"
echo "Disk Space: $(df -h | awk 'NR==2 {print "Total = "$2" / Used = "$3"("$5")"}')"
echo ""
