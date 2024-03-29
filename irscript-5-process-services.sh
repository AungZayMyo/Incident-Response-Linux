#!/bin/bash
#outputfile
output_file="Incident_Report_Processes_&_Services_$(date +%Y-%m-%d-%H-%M-%S).txt"
echo "Date & Time of Report - $(date +%Y-%m-%d-%H-%M-%S)"

#List of Processes & Services
echo "====================== Processes & Services Report =====================" >> "$output_file"
echo " " >> "$output_file"
echo "============= All Running Processes ============" >> "$output_file"
ps -ef >> "$output_file"
echo "" >> "$output_file"
echo "============= Process Tree with PIDs ============" >> "$output_file"
pstree -p >> "$output_file"
echo "" >> "$output_file"
echo "============= Top Processes ============" >> "$output_file"
top -n 1 >> "$output_file"
echo "" >> "$output_file"
echo "============= List of Open Files with network connections ============" >> "$output_file"
lsof -i >> "$output_file"
echo ""
echo "============= List of all services ============" >> "$output_file"
service --status-all >> "$output_file"
echo ""
echo "============= List of all services & current state ============" >> "$output_file"
chkconfig --list >> "$output_file"
echo ""
echo "============= List of running services ============" >> "$output_file"
systemctl list-units --type=service >> "$output_file"
echo ""
echo "====================== Processes & Services Report =====================" >> "$output_file"

echo "Processes & Services Incident Report is saved to $output_file"
