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

VERSION="0.0.1"

wget https://github.com/fernandoBRS/inclusive-linter/releases/download/${VERSION}/inclusivelint -O- | tr -d '\r' >inclusivelint
if chmod +x inclusivelint && mv inclusivelint /usr/bin; then
    printInfo "Finished intallation. Check if everything is working well running inclusivelint -v"
    exit 0
fi

printError "The installation was not finished, something went wrong. Exiting"
exit 1