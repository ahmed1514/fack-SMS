#!/bin/bash
#A plug n' play kind of backend
#Just enter the phone number and the delay
#
#Idk if this is easier but i want to try bash programming
#Created on 01/1/2019 by Ahmed Al-Qhoom
#Last update 20/1/2019

#Text colors
white='\033[0m'
black='\033[30m'
green='\033[32m'
red='\033[31m'
yellow='\033[93m'

warning='\033[1;4;91m'

display_usage () {
    figlet "ahmed"
    echo -e "###################################"
    echo    "# Copyright:  |  # Ahmed@Al-Qhoom #"
    echo    "# Conect WhatsApp: 00967714392204 #"
    echo    "# Created on  |      01/1/2019    #"
    echo -e "###################################"
	echo ""
  echo "There's no need for arguments. Just run this script and it will ask you for the \
   phone number To Send SMS "
  echo ""
  }

if [[ ( $1 == "--help") ||  $1 == "-h" ]]
  then
  	display_usage
  	exit 0
fi

if [ -z "$1" ] 
  then
    figlet "ahmed"
    echo -e "###################################"
    echo    "# Copyright:  |  # Ahmed@Al-Qhoom #"
    echo    "# Conect WhatsApp: 00967714392204 #"
    echo    "# Created on  |      01/1/2019    #"
    echo -e "###################################"
    echo -e "         Example 967XXXxxxXXX      "
    echo  ""
    read -p " ENTER The Phone Number To Send SMS : "  phone_number
    echo  ""
#
 #   while true; do
  #      echo -e "${white}"
   #     read -p "Pleas ENTER number 30 : " delay
    #    echo -e "${warning}"
     #   if [ ${delay} -lt 30 ]; then
      #      echo "Delay time cannot lower than 30"
       #     continue
        #elif [[ -z $delay ]]; then
         # echo -e "${white}Delay time cannot be blank!"
          #continue
        #fi
        #break
    #done

# ${delay}
    echo "${white}"
    echo -e "${green}Thanks4Using!"
    python2 spammer.py ${phone_number} --delay 30
fi
