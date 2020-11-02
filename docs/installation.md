# Installation: Local Environment

## Running the linter locally

There are two main ways of installing inclusivelint, manual steps or via script.

### **Option 1: Installing via script**

We created a script to make the installation process easier. The script `install.sh` is on the repo. To run it, do:

``` sh
./install.sh
```

This script will require `root` password as `sudo` is required to copy the file to `/usr/bin`

### **Option 2: Running all steps manually**

Check out the [Releases](https://github.com/fernandoBRS/inclusive-linter/releases), update the `/<VERSION>` below with the latest version and download it:

```sh
wget https://github.com/inclusivelint/inclusivelint/releases/download/<VERSION>/inclusivelint
```

Set the `inclusivelint` as an executable and move it to `/usr/bin` directory:

```sh
sudo chmod +x inclusivelint && sudo mv inclusivelint /usr/bin
```

Create the folder to drop the dictionary of words:

```sh
mkdir ~/.inclusivelint
```

Download the dictionary on the github releases:

```sh
wget https://github.com/inclusivelint/inclusivelint/releases/download/<VERSION>/outputRelation.txt
```

Move the dictionary to inclusivelint folder:

```sh
mv outputRelation.txt ~/.inclusivelint
```

### Running after installation

Then run the linter on your git repository:

```sh
inclusivelint <GIT_DIRECTORY_PATH>
```

To check the installed version, run the following command:

```sh
inclusivelint -v
```

## Next Steps

- [Installing and running the linter on CI pipelines](./installation-ci-pipelines.md)
- [Adding new words to the dictionary](./add-new-words.md)
