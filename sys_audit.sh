#!/usr/bin/bash

 
echo "running......"
 
sudo ./lynis audit system --q
echo -e "Generating warnings\n"
echo -e "warnings - Most vulnerable point of OS. FIX IT NOW:\n"

sudo cat /var/log/lynis-report.dat | grep warning | sed -e "s/warning\[\]\=//g"
sudo cat /var/log/lynis-report.dat | grep warning | sed -e "s/warning\[\]\=//g"

echo "Generating suggestions"
echo ""
echo "suggestions - Medium severity "
echo ""

sudo cat /var/log/lynis-report.dat | grep suggestion | sed -e "s/suggestion\[\]\=//g"

sudo cat /var/log/lynis-report.dat | grep suggestion | sed -e "s/suggestion\[\]\=//g" |

echo ""
echo "suggestions generated"
echo "output file: suggestions.txt"

echo -e "\nwarnings generated\n"
echo -e "\noutput file: warnings.txt\n"

sudo chmod 755 warnings.txt


echo -e "Do you want to read the file (y or n)"
read in
if [ $in == 'y' ]
then
cat warnings.txt
cat suggestions.txt
elif [ $in == 'n' ]
then
echo "FILE SAVED in current working dir. Must view it later"
else
echo "Enter correct option"
fi
