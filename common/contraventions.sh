#!/usr/bin/env bash

function find_error_contraventions() {
    file=${1}
    fileName=$(basename -- $file)
    pattern=${2}
    contraventions=$(egrep -iHnr "$pattern" $file | cut -d : -f2)

    for contravention in $contraventions; do
        if ! [[ -z $contravention ]]; then
            printError "[Error] $fileName (line $contravention): ${ERROR_TERMINOLOGIES[$pattern]}\n"
            contraventionFound=true
        fi
    done
}

function find_warning_contraventions() {
    file=${1}
    fileName=$(basename -- $file)
    pattern=${2}
    contraventions=$(egrep -iHnrw "$pattern" $file | cut -d : -f2)

    for contravention in $contraventions; do
        if ! [[ -z $contravention ]]; then
            printWarning "[Warning] $fileName (line $contravention): ${WARNING_TERMINOLOGIES[$pattern]}\n"
        fi
    done
}
