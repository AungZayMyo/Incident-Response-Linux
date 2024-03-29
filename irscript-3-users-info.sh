#!/bin/bash
#outputfile
output_file="Incident_Report_Users_Information_$(date +%Y-%m-%d-%H-%M-%S).txt"
echo "Date & Time of Report - $(date +%Y-%m-%d-%H-%M-%S)"

#List of Users Accounts
echo "====================== Users Activities =====================" >> "$output_file"
echo " " >> "$output_file"
echo "============= Users Accounts ============" >> "$output_file"
cat /etc/passwd >> "$output_file"
echo "" >> "$output_file"
echo "============= User Groups ============" >> "$output_file"
cat /etc/group >> "$output_file"
echo "" >> "$output_file"
echo "============= Sudoers Accounts ============" >> "$output_file"
cat /etc/sudoers >> "$output_file"
echo "" >> "$output_file"
echo "============= Most Recent Logins ============" >> "$output_file"
lastlog >> "$output_file"
echo "" >> "$output_file"
echo "============= Last Login Users ============" >> "$output_file"
last >> "$output_file"
echo "" >> "$output_file"
echo "============= Current Login Users ============" >> "$output_file"
who >> "$output_file"
echo ""
echo "============= Logged in Users & Activities ============" >> "$output_file"
w >> "$output_file"
echo ""
echo "====================== Users Activities =====================" >> "$output_file"

echo "Users Incident Response Report is saved to $output_file"
