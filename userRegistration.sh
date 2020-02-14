#!/bin/bash -x
shopt -s extglob
echo "WELCOME TO USER REGISTRATION"
read -p "Enter first name : " firstName
read -p "Enter last name : " lastName

#Valid pattern for first and last name
validName="^[A-Z]{1}[a-z]{2,}$"

function validationOfUserInputs (){
	local userInput=$1
	local validPattern=$2
	if [[ $userInput =~ $validPattern ]]
	then
		echo "Valid"
	else
		echo "Invalid"
	fi
}

validationOfUserInputs $firstName $validName
validationOfUserInputs $lastName $validName
