#!/bin/bash
function scan1ip(){
	read -p "Enter an ip adress in following rule ip.ip.ip.ip: " ip_address
	if [[ "$ip_address" =~ (([01]{,1}[0-9]{1,2}|2[0-4][0-9]|25[0-5])\.([01]{,1}[0-9]{1,2}|2[0-4][0-9]|25[0-5])\.([01]{,1}[0-9]{1,2}|2[0-4][0-9]|25[0-5])\.([01]{,1}[0-9]{1,2}|2[0-4][0-9]|25[0-5]))$ ]]
		then
 			echo -e "You have entered right ip address.\nScanning started...";
			sudo nmap $ip_address;
		else
  			echo "You've entered a wron ip address. Goodbye...";
			exit 5;
	fi
}

scan1ip
