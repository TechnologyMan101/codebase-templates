#!/bin/bash
clear
# Start of Function Cluster
tput setaf 3
echo "Initializing functions..."
sleep 1.5
tput setaf 10
mainmenu () {
	clear
	tput setaf 3
	echo "====================================="
	echo " --- Test for Release 5 Codebase ---"
	echo "====================================="
	echo "Press 1 to see German."
	echo "Press 2 to see English."
	tput setaf 9
	echo "Press Q to quit." 
	tput sgr0
	echo "Enter your selection:"
	IFS=""
	read -sN1 answer
	case $(echo "$answer" | tr A-Z a-z) in
		1)	German;;
		2)	English;;
		q)	quitscript;;
		*)	badoption;;
	esac

}
echo "Loaded mainmenu."
quitscript () {
	tput sgr0
	clear
	exit
}
echo "Loaded quitscript."
badoption () {
	clear
	tput setaf 9
	echo "Invalid Option!"
	tput setaf 3
	echo "Returning to Main Menu..."
	tput sgr0
	sleep 3
	mainmenu
}
echo "Loaded badoption."
finish () {
	clear
	tput setaf 10
	echo "Hit any key to exit:"
	tput sgr0
	IFS=""
	read -sN1 answer
	quitscript
}
echo "Loaded finish."
German () {
	clear
	tput setaf 3
	echo "German..."
	sleep 3
	clear
	tput sgr0
	echo "Hallo!"
	echo "Ich bin Nathan."
	sleep 3
	finish
}
echo "Loaded German."
English () {
	clear
	tput setaf 3
	echo "English..."
	sleep 3
	clear
	tput sgr0
	echo "Hello!"
	echo "I am Nathan."
	sleep 3
	finish
}
echo "Loaded English."
runcheck () {
	IFS=$' \t\n'
	command="$*"
	retval=1
	attempt=1
	until [[ $retval -eq 0 ]] || [[ $attempt -gt 5 ]]; do
		(
			set +e
			$command
		)
		retval=$?
		attempt=$(( $attempt + 1 ))
		if [[ $retval -ne 0 ]]; then
			clear
			tput setaf 9
			echo "Oops! Something went wrong! Retrying in 3 seconds..."
			tput sgr0
			sleep 3
			clear
		fi
	done
	if [[ $retval -ne 0 ]] && [[ $attempt -gt 5 ]]; then
		clear
		tput setaf 9
		echo "Oops! A fatal error has occurred and the program cannot continue. Returning to the main menu in 10 seconds..."
		tput setaf 3
		echo "Please try again later or if the problem persists, create an issue on GitHub."
		tput sgr0
		sleep 10
		clear
		mainmenu
	fi
	IFS=""
}
# Note: Add "runcheck" before any command that needs to be checked. This sample script does not include an example as there is nothing to check.
echo "Loaded runcheck."
tput setaf 3
echo "Continuing..."
tput sgr0
sleep 1.5
# End of Function Cluster
# Start of Main Script
while true
do
	mainmenu
done
# End of Main Script
