# Inclusive Linter ![inclusivelint-ci](https://github.com/fernandoBRS/inclusive-linter/workflows/inclusivelint-ci/badge.svg)

As developers, we’re continually writing code, and we do that by passing messages. Each message carries a lot of context and semantics so we're always evolving how to do it in a better way. Terminology is in the roots of communication, and therefore is as vital for writing quality code as writing user stories, documentation, and even naming branches. If you care a lot about communicating effectively, I think we must use an **inclusive language** to do so.

The `inclusivelint` is a static analysis tool that enables a more inclusive language and diverse culture through Git workflows by looking for non-inclusive terminologies on files and suggesting new ones. The [Categories & Terminologies](./docs/categories-and-terminologies.md) section covers the categories and non-inclusive terminologies currently supported by the linter.

[![Demo](https://asciinema.org/a/7Gnm6QbeemHbY04OG6SjUpFsN.svg)](https://asciinema.org/a/7Gnm6QbeemHbY04OG6SjUpFsN)

## Prerequisites

- [Windows Subsystem for Linux (WSL)](https://docs.microsoft.com/en-us/windows/wsl/install-win10) or Debian-based distributions (e.g. Ubuntu)
  
## Installing and Running the linter locally

Check out the [Releases](https://github.com/fernandoBRS/inclusive-linter/releases), update the `/<VERSION>` below with the latest version and download it:

```sh
wget https://github.com/fernandoBRS/inclusive-linter/releases/download/<VERSION>/inclusivelint
```

Set the `inclusivelint` as an executable and move it to `/usr/bin` directory:

```sh
sudo chmod +x inclusivelint && mv inclusivelint /usr/bin
```

Then run the linter on the directory where you want to look for non-inclusive terminologies:

```sh
inclusivelint <DIRECTORY_PATH>
```

## Installing and Running the linter in CI pipelines

### **GitHub Actions**

```yaml
jobs:
  build:
    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v2

    - name: Install inclusive linter
      run: |
        wget https://github.com/fernandoBRS/inclusive-linter/releases/download/<VERSION>/inclusivelint
        sudo chmod +x inclusivelint
        sudo mv inclusivelint /usr/bin

    - name: Run inclusive linter
      run: |
        export TERM=xterm
        inclusivelint .
```

> Hint: You can set the linter version as an [environment variable](https://docs.github.com/en/actions/configuring-and-managing-workflows/using-environment-variables) on your pipeline to not let it hardcoded.

### **Azure DevOps**

```yaml
steps:
- script: |
    wget https://github.com/fernandoBRS/inclusive-linter/releases/download/<VERSION>/inclusivelint
    sudo chmod +x inclusivelint
    sudo mv inclusivelint /usr/bin
  displayName: Install inclusive linter
- script: |
    export TERM=xterm
    inclusivelint .
  displayName: Run inclusive linter
````

> Hint: You can use a [variable group](https://docs.microsoft.com/en-us/azure/devops/pipelines/library/variable-groups?view=azure-devops&tabs=yaml) on your pipeline to set the linter version as an environment variable to not let it hardcoded.
