# Inclusive Linter

As developers, we’re continually writing code, and we do that by passing messages. Each message carries a lot of context and semantics so we're always evolving how to do it in a better way. Terminology is in the roots of communication, and therefore is as vital for writing quality code as writing user stories, documentation, and even naming branches. If you care a lot about communicating effectively, I think we must use an **inclusive language** to do so.

The `inclusivelint` enables a more inclusive language and diverse culture through Git workflows by looking for terminologies on files and suggesting new ones.

[![asciicast](https://asciinema.org/a/VlinK1jA4jT17N1xoucHNBdP6.svg)](https://asciinema.org/a/VlinK1jA4jT17N1xoucHNBdP6)

## Categories

The linter categorizes all terminologies as:

- **Errors**: When words must be replaced (e.g. `blacklist` by another word such as `blocklist`)
- **Warnings**: When changing the word can potentially change the meaning (e.g. `Master of Puppets` song from Metallica)
