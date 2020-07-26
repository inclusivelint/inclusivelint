#!/usr/bin/env bash

declare -A ERROR_TERMINOLOGIES
declare -A WARNING_TERMINOLOGIES

ERROR_TERMINOLOGIES["black\s?list"]="The term 'blacklist' was detected, prefer the term 'blocklist' instead."
ERROR_TERMINOLOGIES["white\s?list"]="The term 'whitelist' was detected, prefer the term 'allowlist' instead."

WARNING_TERMINOLOGIES["master"]="The term 'master' was detected, maybe another terminology should be considered."
