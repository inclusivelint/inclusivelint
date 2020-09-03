# Inclusivelint ![inclusivelint-ci](https://github.com/fernandoBRS/inclusive-linter/workflows/inclusivelint-ci/badge.svg)

As developers, we’re continually writing code, and we do that by passing messages. Each message carries a lot of context and semantics so we're always evolving how to do it in a better way. Terminology is in the roots of communication, and therefore is as vital for writing quality code as writing user stories, documentation, and even naming branches. If you care a lot about communicating effectively, I think we must use an **inclusive language** to do so.

The `inclusivelint` is a static analysis tool that enables a more inclusive language and diverse culture by looking for non-inclusive terminologies on your Git repository and suggesting new ones. The [Categories & Terminologies](./docs/categories-and-terminologies.md) section covers the categories and non-inclusive terminologies currently supported by the linter.

![inclusivelint demo](./docs/images/demo.gif "inclusivelint demo")

## Prerequisites

- [Windows Subsystem for Linux (WSL)](https://docs.microsoft.com/en-us/windows/wsl/install-win10) or Debian-based distributions (e.g. Ubuntu)

## Guidelines

- [Installing and running the linter in your local environment](./docs/installation.md)
- [Installing and running the linter on CI pipelines](./docs/installation-ci-pipelines.md)
- [Adding new words to the dictionary](./docs/add-new-words.md)

## Development Requirements

The linter leverages a terms parser written in Python 3. If there is a need to update the dictionary located on ```parsers/outputRelation.txt```, make sure you have Python 3.x installed then run it:

```sh
python retextEqualityParser.py
```

Note: be sure that ```python``` command is pointing to python3.*. To check it do:

``` sh
python --version
```

The parser receives the ```wordsTable.md``` as input and create/update the dictionary on the
```outputRelation.txt```, located on the same directory.

## Additional documentation

- [How the search engine works](./docs/search-engine.md)
