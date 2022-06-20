
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
    echo
		echo cat\n
		echo
		.cat ~/.ssh/id_rsa.pub
	fi
}

function main() {
  FILE=$HOME/.ssh/id_rsa.pub

  if [ -e "$FILE" ] 
  then
    read -p "$FILE exist. Do you want to copy it instead?(y/n): " ANSWER 
    
    if [ "$ANSWER" == "y" ]
    then
      cat "$FILE"
      echo
      return
    fi
  fi
  
  SetupSSH 
  echo
}

function SetupSSH() {
  setGit 
  setSshKey 
}

main 
