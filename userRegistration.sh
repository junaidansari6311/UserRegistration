#!/bin/bash -x
shopt -s extglob
echo "WELCOME TO USER REGISTRATION"
read -p "Enter first name: " firstName

function checkFirstName (){
	validFirstName="^[A-Z]{1}[a-z]{3,}$"
	if [[ $1 =~ $validFirstName ]]
	then
		echo "First Name is valid"
	else
		echo "First Name is invalid"
	fi
}

checkFirstName $firstName
