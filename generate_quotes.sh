#!/bin/zsh
x=5

while [ $x -eq 5 ]; do
	fortune | cowsay -f blowfish | lolcat
	sleep 1

done
