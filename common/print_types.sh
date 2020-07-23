#!/usr/bin/env bash

function printError() {
    RED=$(tput setaf 1)
    NORMAL=$(tput sgr0)
    printf "${RED}${*}${NORMAL}" >/dev/tty
}
