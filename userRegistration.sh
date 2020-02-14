#!/bin/bash -x
shopt -s extglob
echo "WELCOME TO USER REGISTRATION"
read -p "Enter first name : " firstName
read -p "Enter last name : " lastName
read -p "Enter email id : " email
#Valid pattern for first and last name
validName="^[A-Z]{1}[a-z]{2,}$"
#Valid pattern for email
validEmail="^[A-Za-z]{3,}([-|+|.]?[A-Za-z0-9]+)?[@][A-Za-z0-9]+[.][A-Za-z]{2,4}*([.][A-Za-z]{2,4})?$"

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
validationOfUserInputs $email $validEmail
