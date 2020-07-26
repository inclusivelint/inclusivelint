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

function printWarning() {
    yellow=`tput setaf 3`
    reset=`tput sgr0`
    echo "${yellow}${*}${reset}"
}
