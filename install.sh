#!/usr/bin/env bash

function printInfo() {
    red=`tput setaf 1`
    green=`tput setaf 2`
    reset=`tput sgr0`
    echo "${green}${*}${reset}"
}

function printError() {
    red=`tput setaf 1`
    reset=`tput sgr0`
    echo "${red}${*}${reset}"
}

VERSION="0.0.4"

wget https://github.com/inclusivelint/inclusivelint/releases/download/${VERSION}/inclusivelint -O- | tr -d '\r' >inclusivelint
wget https://github.com/inclusivelint/inclusivelint/releases/download/${VERSION}/outputRelation.txt -O- | tr -d '\r' >outputRelation.txt

printInfo "Creating inclusivelint directory..."
if mkdir ~/.inclusivelint; then
    printInfo "Successfully created inclusivelint directory."
    mv outputRelation.txt ~/.inclusivelint
else
    printError "Scritpt was not able to create a ~/.inclusivelint folder"
    exit 1 
fi

if chmod +x inclusivelint && mv inclusivelint /usr/bin; then
    printInfo "Finished intallation. Check if everything is working well running inclusivelint -v"
    exit 0
else
    printError "The installation was not finished, something went wrong. Exiting"
    exit 1
fi
