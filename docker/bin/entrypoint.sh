#!/usr/bin/bash

echo "container is running..."

function pause (){
   read -p "$*"
}

function start_container (){

	echo " Server is runing.."
	nginx -g 'daemon off;'& 
	pidnginx=$!
	echo	"Pid nginx $pidnginx"
	while ps -p $pidnginx > /dev/null; 
	do 

		sleep 30
		echo	"Pid nginx $pidnginx"
	done;

}

start_container 

pause 'Press [Enter] key to continue...'

echo "TESTE"