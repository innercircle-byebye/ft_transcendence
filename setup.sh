#!/bin/bash

function my_function(){
	local front_or_back="$1"
    local repo="$2"
	echo -e "copy and paste below code and execute:\n\n"
	echo -n "rm -rf .gitmodules front back; "
	if [ $front_or_back == "front" ]
	then
		echo -n "git clone $repo front; git clone git@github.com:innercircle-byebye/ft_transcendence-back.git back"
		echo -e "\n"
	else
		echo -n "git clone $repo back; git clone git@github.com:innercircle-byebye/ft_transcendence-front.git front"
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
echo -e "i am :\n"
echo -e "\t$front_or_back\n"
echo -e "forked repo address:\n"
echo -e "\t$forked_repo\n"
echo -e "=============================================="

echo -e "correct?"
read -p "enter y or n:" yn
if [ "$yn" = "y" ]; then
	my_function "$front_or_back" "$forked_repo"
else
	echo -e "start over the program"
fi

exit
