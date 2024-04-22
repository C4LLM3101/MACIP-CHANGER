#!/bin/bash


echo -e "\033[33m      ▄█     ▄███████▄   ▄▄▄▄███▄▄▄▄      ▄████████  ▄████████ "
echo -e "\033[33m     ███    ███    ███ ▄██▀▀▀███▀▀▀██▄   ███    ███ ███    ███ "
echo -e "\033[33m     ███▌   ███    ███ ███   ███   ███   ███    ███ ███    █▀  "
echo -e "\033[33m     ███▌   ███    ███ ███   ███   ███   ███    ███ ███        "
echo -e "\033[33m     ███▌ ▀█████████▀  ███   ███   ███ ▀███████████ ███        "
echo -e "\033[33m     ███    ███        ███   ███   ███   ███    ███ ███    █▄  "
echo -e "\033[33m     ███    ███        ███   ███   ███   ███    ███ ███    ███ "
echo -e "\033[33m     █▀    ▄████▀       ▀█   ███   █▀    ███    █▀  ████████▀  "
echo -e "\033[33m                                                                "
echo -e                                            "\033[35m Creator :- 101\033[0m"


echo -e "\033[33m[?] Do you want to change the MAC and Private IP address? (yes/no):\033[0m"
read mac_choice

# Check if the input is empty
if [[ -z "$mac_choice" ]]; then
    echo "No input provided. Exiting this program."
    exit 1
fi


if [[ "$mac_choice" == "yes" ]]; then
    
    echo -e "\033[33m[?] First copy your MAC address and then paste it here as input \033[0m"
    echo -e "\033[33m[?] Enter the your new MAC address:\033[0m"
    read new_mac

    # Change the MAC address

    ifconfig eth0 down
    ifconfig eth0 hw ether "$new_mac"
    ifconfig eth0 up
    ifconfig

    echo "MAC address changed successfully."
else
    
    echo -e "\033[33m[?] First copy your Private IP address and then paste it here as input \033[0m"
    echo -e "\033[33m[?] Enter the new IP address:\033[0m"
    read new_ip

    # Change the IP address
    ifconfig eth0 "$new_ip" 
    ifconfig | grep inet 

    echo " Private IP address changed successfully."
fi
 echo -e "\033[33m[?] After running this program restart your system so that you can see your output \033[0m"
  echo -e "\033[33m[?] done................... \033[0m"