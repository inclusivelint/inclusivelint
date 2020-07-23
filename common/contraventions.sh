#!/usr/bin/env bash

function find_contraventions() {
    file=${1}
    pattern=${2}
    contraventions=$(egrep -H -n -r "$pattern" $file | cut -d : -f2)

    for contravention in $contraventions; do
        if ! [[ -z $contravention ]]; then
            printError "$file [line $contravention]: ${TERMINOLOGIES[$pattern]}\n"
            contraventionFound=true
        fi
    done
}
