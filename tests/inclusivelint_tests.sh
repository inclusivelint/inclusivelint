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

function linter_should_find_contraventions() {
    # prepare
    actualWarnings=0
    expectedWarnings=5

    # act
    count_contraventions "./samples-1" $actualErrors $actualWarnings

    assertEqual "warnings" $actualWarnings $expectedWarnings
    warningsAssertResult=$?

    if [[ $errorsAssertResult == 0 ]] && [[ $warningsAssertResult == 0 ]]; then
        printInfo "${FUNCNAME[0]}: Passed"
    fi
}

function linter_should_not_find_contraventions() {
    # prepare
    actualErrors=0
    actualWarnings=0
    expectedErrors=0
    expectedWarnings=0

    # act
    count_contraventions "./samples-2" $actualErrors $actualWarnings

    # assert
    assertEqual "errors" $actualErrors $expectedErrors
    errorsAssertResult=$?

    assertEqual "warnings" $actualWarnings $expectedWarnings
    warningsAssertResult=$?

    if [[ $errorsAssertResult == 0 ]] && [[ $warningsAssertResult == 0 ]]; then
        printInfo "${FUNCNAME[0]}: Passed"
    fi
}

function count_contraventions() {
    directory=$1
    actualErrors=$2
    actualWarnings=$3

    linterResults=$(inclusivelint $directory) > /dev/null

    CURRENT_IFS=$IFS
    IFS=$'\n'
    contraventions=($linterResults)
    IFS=$CURRENT_IFS

    for i in $(seq 0 ${#contraventions[@]});
    do
        if [[ "${contraventions[$i]}" == *"[Error]"* ]]; then
            ((actualErrors=actualErrors+1))
        else
            if [[ "${contraventions[$i]}" == *"[Warning]"* ]]; then
                ((actualWarnings=actualWarnings+1))
            fi
        fi
    done
}

function assertEqual() {
    errorType=$1
    actual=$2
    expected=$3
    
    if [[ $actual != $expected ]]; then
        printError "${FUNCNAME[1]}: Failed (actual $errorType: $actual | expected $errorType: $expected)"
        failed=true
        return 1
    fi

    return 0
}
