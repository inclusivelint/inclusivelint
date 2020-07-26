#!/usr/bin/env bash

function printInfo() {
    GREEN=$(tput setaf 2)
    NORMAL=$(tput sgr0)
    printf "${GREEN}${*}${NORMAL}"
}

function printError() {
    RED=$(tput setaf 1)
    NORMAL=$(tput sgr0)
    printf "${RED}${*}${NORMAL}"
}

function printWarning() {
    YELLOW=$(tput setaf 3)
    NORMAL=$(tput sgr0)
    printf "${YELLOW}${*}${NORMAL}"
}
