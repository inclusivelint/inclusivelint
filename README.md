# Inclusive Linter ![inclusivelint-ci](https://github.com/fernandoBRS/inclusive-linter/workflows/inclusivelint-ci/badge.svg)

As developers, we’re continually writing code, and we do that by passing messages. Each message carries a lot of context and semantics so we're always evolving how to do it in a better way. Terminology is in the roots of communication, and therefore is as vital for writing quality code as writing user stories, documentation, and even naming branches. If you care a lot about communicating effectively, I think we must use an **inclusive language** to do so.

The `inclusivelint` is a static analysis tool that enables a more inclusive language and diverse culture through Git workflows by looking for non-inclusive terminologies on files and suggesting new ones. The [Categories & Terminologies](./docs/categories-and-terminologies.md) section covers the categories and non-inclusive terminologies currently supported by the linter.

[![asciicast](https://asciinema.org/a/VlinK1jA4jT17N1xoucHNBdP6.svg)](https://asciinema.org/a/VlinK1jA4jT17N1xoucHNBdP6)

## Prerequisites

- [Windows Subsystem for Linux (WSL)](https://docs.microsoft.com/en-us/windows/wsl/install-win10) or Debian-based distributions (e.g. Ubuntu)
  
## Installation

Check out the [Releases](https://github.com/fernandoBRS/inclusive-linter/releases) page to see the latest version, and download it:

```sh
wget https://github.com/fernandoBRS/inclusive-linter/releases/download/<VERSION>/inclusivelint
```

Then move the `inclusivelint` script to `/usr/bin`:

```sh
sudo mv inclusivelint /usr/bin
```

## Using the linter

Run the linter on the directory where you want to look for non-inclusive terminologies:

```sh
inclusivelint <DIRECTORY_PATH>
```
