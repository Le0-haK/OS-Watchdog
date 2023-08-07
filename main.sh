#!/usr/bin/bash
#!/usr/bin/python3

RED="\e[31m"
CYAN="\e[36m"
GREEN="\e[32m"
L_BLUE="\e[94m"
ENDCOLOR="\e[0m"

echo -e "\n\t${L_BLUE}OS Security Auditor & Analyzer${ENDCOLOR}"
echo -e "\t\033[5m${L_BLUE}Author: Le0-haK${ENDCOLOR}\033[0m"
while :
do
echo -e "\n${GREEN}---------------SELECT MODULE---------------${ENDCOLOR}\n"
echo -e "${CYAN}1. FOR DATA RECOVERY${ENDCOLOR}\n"
echo -e "${CYAN}2. FOR FILE/DIR LOCKER${ENDCOLOR}\n"
echo -e "${CYAN}3. FOR INTEGRITY GENERATOR/CHECKER${ENDCOLOR}\n"
echo -e "${CYAN}4. FOR REAL-TIME SYSTEM MONITORING${ENDCOLOR}\n"
echo -e "${CYAN}5. FOR SYSTEM AUDITING${ENDCOLOR}\n"

sleep 1
echo -e "${RED}\n\tPRESS <CTRL+C> TO EXIT${ENDCOLOR}\n"

echo -e "\033[5mEnter >\033[0m"
read choice

if [ $choice -eq 1 ]
then
echo -e "${CYAN}\t\t*Starting the Recovery tool*${ENDCOLOR}\t\n"
BAR='++++++++++'

for i in {1..10}; do
    echo -ne "\r${L_BLUE}${BAR:0:$i}${ENDCOLOR}"
    sleep .1
done
python3 data_recover.py

elif [ $choice -eq 2 ]
then
echo -e "${CYAN}\t*Starting the locker tool*${ENDCOLOR}\t\n"
BAR='++++++++++'

for i in {1..10}; do
    echo -ne "\r${L_BLUE}${BAR:0:$i}${ENDCOLOR}"
    sleep .1
done
python3 file_locker.py

elif [ $choice -eq 3 ]
then
echo -e "${CYAN}\t*Starting the Integrity tool.*${ENDCOLOR}\t\n"
BAR='++++++++++'

for i in {1..10}; do
    echo -ne "\t\t\r${L_BLUE}${BAR:0:$i}${ENDCOLOR}"
    sleep .1
done
python3 integrity_checker.py

elif [ $choice -eq 4 ]
then
echo -e "${CYAN}\t*Starting the Sys_Mon tool.*${ENDCOLOR}\t\n"
BAR='++++++++++'
for i in {1..10}; do
    echo -ne "\t\t\r${L_BLUE}${BAR:0:$i}${ENDCOLOR}"
    sleep .1
done
python3 sys_monitor.py

elif [ $choice -eq 5 ]
then
echo -e "${CYAN}\t*Starting the Sys_Auditor tool.*${ENDCOLOR}\t\n"
BAR='++++++++++'
for i in {1..10}; do
    echo -ne "\t\t\r${L_BLUE}${BAR:0:$i}${ENDCOLOR}"
    sleep .1
done
bash sys_audit.sh

else
echo -e "${RED}BAD CHOICE. ENTER THE GOOD MODULE${ENDCOLOR}\n"
fi
done
