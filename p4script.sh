#!/bin/bash

#help page
if [[ $1 == "help" ]];
then
	echo 
	echo "**'run' CAN BE USED AFTER 'install'**"
	echo
	echo "**TOOLS**"
	echo 	"'install'"
	echo	"'run'"
	echo
	echo "**OSINT**"
	echo 	"'start'"
	echo 	"'resources'"
	echo 	"'lookup-domain (domain)'"
	echo 	"'lookup-ip (ip)'"
	echo 	"'google (search-term)'"
	echo 	"'shodan (search-term)'"
	echo	"'github (search-term)'"
	echo

#blank osint in main browser
elif [[ $1 == "start" ]];
then
	echo
	xdg-open https://www.google.com/
	xdg-open https://www.shodan.io/
	xdg-open https://github.com/
	
#open resources in main browser
elif [[ $1 == "resources" ]];
then
	echo
	xdg-open hhttps://github.com/Jieyab89/OSINT-Cheat-sheet
	xdg-open https://i-intelligence.eu/uploads/public-documents/OSINT_Handbook_2020.pdf

#install tools
elif [[ $1 == "install" ]];
then
	echo 
	echo "**INPUT PASSWORD TO INSTALL Maltego, TheHarvester AND Recon-ng**"
	sudo apt install maltego recon-ng -y
	
#run maltego and recon-ng
elif [[ $1 == "run" ]];
then
	echo 
	gnome-terminal -x recon-ng && gnome-terminal -x maltego
	
#Lookup website for OSINT
elif [[ $1 == "lookup-domain" ]];
then
	echo
	nslookup -type=any $2 && echo "**HERE IS SOME INFO ABOUT $2**"
	echo
	xdg-open https://www.google.com/search?q=$2
	
#Lookup website for OSINT
elif [[ $1 == "lookup-ip" ]];
then
	nslookup -type=any $2 && echo "HERE IS SOME INFO ABOUT $2"
	xdg-open https://www.google.com/search?q=$2
	
#google-er
elif [[ $1 == "google" ]];
then
	echo
	xdg-open https://www.google.com/search?q=$2
	
#github-er
elif [[ $1 == "github" ]];
then
	echo
	xdg-open https://github.com/search?q=$2
	
#shodan.io-er
elif [[ $1 == "shodan" ]];
then
	echo
	xdg-open https://www.shodan.io/search?query=$2
	
#Dorks
elif [[ $1 == "dorks" ]];
then
	echo
	echo "**GOOGLE DORKS**"
	echo "Inurl:"
	echo "intitle:"
	echo "intext:"
	echo "site:"
	echo "cache:"
	echo "filetype:"
	echo "|"
	echo "-"
	echo "OR"
	echo "AND"
	echo
	echo "**SHODAN.IO DORKS**"
	echo "'country:'"
	echo "'title:'"
	echo "'os:'"
	echo
	else
	echo "         
		  __
	     w  c(..)o   (
	      \__(-)    __)
		  /\   (
		 /(_)___)
		w  /|
		  | |
		  m m
   **INPUT './script help' TO START**"
	echo
fi
