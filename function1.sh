#!/bin/bash

function MENU()
{
	
	read -p "Would you like to start the process of becoming anon and connect to remote VPS? [Y/N]" OPTION
	case $OPTION in
		Y)
			figlet "Lets go!!!!"
		;;
		
		N)
			figlet "BYE BYE THEN"
		;;
		esac
}
MENU


function checktools()
{
	apt-cache show nmap
	
	apt-cache show geoip
	
	apt-cache show whois
	
	sudo apt-get install geoiplookup
	
	sudo apt-get install whois
	
	sudo apt-get install sshpass
	
	
}

checktools

function getnipe()

{
	
git clone https://github.com/htrgouvea/nipe 

sudo cpan install Try::Tiny Config::Simple JSON

}

getnipe && 

cd nipe


function anon()
{

sudo perl nipe.pl install

sudo perl nipe.pl start


}

anon

function statuscheck()
{

sudo perl nipe.pl status
}

statuscheck

function connectvps()
{
	
	
	
}
