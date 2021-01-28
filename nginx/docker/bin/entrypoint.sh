#!/usr/bin/bash

echo "container is running..."

function pause (){
	read -p "$*"
}

function start_container (){
	trap stop_container SIGQUIT SIGINT SIGTERM SIGHUP
	echo " Server is runing ..."
	nginx -g 'daemon on;'&
	echo $$ > /run/nginx.pid
}

function stop_container () {
	echo " Arret du serveur ..."
	nginx -s stop
	exit

}

start_container 
echo "Pid ninx : $(cat /run/nginx.pid )" 


	echo " [q] pour quitter "
while [[ true ]]; do
	read -n 1 key
	[[ ${key} = q ]] &&	stop_container && exit 
done
