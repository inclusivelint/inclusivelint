# Categories & Terminologies

The linter categorizes all terminologies as:

- **Errors**: When words must be replaced (e.g. `blacklist` by another word such as `blocklist`)
- **Warnings**: When changing the word can potentially change the meaning (e.g. `Master of Puppets` song from Metallica)

## Supported Terminologies

| Terminologies        | Suggested Terminologies | Category |
|----------------------|-------------------------|----------|
| Black list/blacklist | Block list/blocklist    | Error    |
| White list/whitelist | Allow list/allowlist    | Error    |
| Slave                | Secondary               | Error    |
| Master               | Main/Primary            | Warning  |
