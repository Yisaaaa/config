#! /bin/bash

function setGit() {
	git config --global user.email "ryansanisit19@gmail.com"
	git config --global user.name "Yisaaaa"
}

function setSshKey() {
	ssh-keygen -t rsa -b 4096 -C "ryansanisit19@gmail.com"
	eval $(ssh-agent -s)
	ssh-add ~/.ssh/id_rsa
	
	read -p "Do you want to copy the key?(y/n): " ANSWER
	if [ "$ANSWER" == "y" ]
	then
		echo cat\n
		echo
		cat ~/.ssh/id_rsa.pub
	fi
}

setGit
setSshKey
echo Done!
