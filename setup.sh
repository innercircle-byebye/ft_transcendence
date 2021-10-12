#!/bin/bash

function my_function(){
	echo -e "copy and paste below code and execute:\n\n"
	echo -n "rm -rf .git .gitmodules front back; "
	if (( $1 == "front" ))
	then
		echo -n "git clone $2 front; git clone git@github.com:innercircle-byebye/ft_transcendence-back.git back"
		echo -e "\n"
	else
		echo -n "git clone $2 back; git clone git@github.com:innercircle-byebye/ft_transcendence-front.git front\n\n"
		echo -e "\n"
	fi

	echo -e "============================================================"
	echo -e " don't forget to run source alias.sh for commands"
	echo -e "============================================================\n\n"
}

echo -e "============================================================"
echo -e "      ft_transcendence development environment setup"
echo -e "============================================================\n\n"

while :
do
	echo -e "are you front or back?: "
	read  front_or_back
	if [ "$front_or_back" == "front" ]
	then
		echo -e "setting up for front\n"
		break
	fi
	if [ "$front_or_back" == "back" ]
	then
		echo -e "setting up for back\n"
		break
	fi
	echo -e "wrong input. "
done

while :
do
	echo -e "please enter your forked repo URL: \n"
	read forked_repo

	echo -e "\nis below address correct?"
	echo -e "============================================================"
	echo -e " - $forked_repo"
	echo -e "============================================================\n"
	read -p "enter y or n:" yn
 	case $yn in
        [Yy]* ) break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
	echo -e "enyer your repo URL again"
done

echo -e "==================Summary====================="
echo -e "i am : $front_or_back"
echo -e "forked repo address:"
echo -e "\t$forked_repo"
echo -e "=============================================="

echo -e "correct?"
read -p "enter y or n:" yn
if [ "$yn" = "y" ]; then
	my_function "$front_or_back" "$forked_repo"
else
	echo -e "start over the program"
fi

exit
