#!/usr/bin/env bash

declare -A ERROR_TERMINOLOGIES
declare -A WARNING_TERMINOLOGIES

ERROR_TERMINOLOGIES["black\s?list"]="The term 'blacklist' was detected, consider other terms such as 'blocklist' instead."
ERROR_TERMINOLOGIES["white\s?list"]="The term 'whitelist' was detected, consider other terms such as 'allowlist' instead."
ERROR_TERMINOLOGIES["slave"]="The term 'slave' was detected, consider other terms such as 'secondary' instead."

WARNING_TERMINOLOGIES["master"]="The term 'master' was detected, maybe another terminology should be considered."
