#!/usr/bin/env bash
#creating a parent directory for my project work
read -p ''enter a name:'' input
mkdir -p attendance_tracker_${input}
mkdir -p attendance_tracker_${input}/helpers
mkdir -p attendance_tracker_${input}/reports
# creating files and moving them inside the directory
touch attendance_tracker_${input}/attendance_checker.py
touch attendance_tracker_${input}/helpers/assets.csv
touch attendance_tracker_${input}/helpers/config.json
touch attendance_tracker_${input}/reports/reports.log
mv attendance_checker.py "attendance_tracker_${input}"
mv assets.csv "attendance_tracker_${input}/helpers"
mv config.json "attendance_tracker_${input}/helpers"
mv reports.log  "attendance_tracker_${input}/reports"
echo "project work briefing" > README.md
#updating attendance threshold based on users preference
read -p "Do you want to update attendance threshold? (y/n)=" choice
if [ $choice = "y" ]; then
       read -p "enter the new warning" warning
       read -p "enter the new failure" failure
warning=${warning:75}
failure=${failure:50}
json="attendance_tracker_${input}/helpers/config.json"
       sed -i 's/"warning"/"warning": '"$warning"'/g' $json
       sed -i 's/"failure"/"failure": '"$failure"'/g' $json

else
        echo "Keeping default thresholds (warning=75) , (failure=50)"
fi

trap clean SIGINT
clean (){
echo "Canceling..."
if [ -d "attendance_tracker_${input}" ]; then zip -r "attendance_tracker_${input}_archive" "attendance_tracker_${input}"
        rm -rf "attendance_tracker_${input}"
        echo " finished "
fi:wq