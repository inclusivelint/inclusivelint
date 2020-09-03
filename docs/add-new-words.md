# Adding new words to the dictionary

## Option 1: Edit dictionary file

You can edit the ```outputRelation.txt``` that is located in ```~/.inclusivelint``` folder.
Add a line on the end of the file following:

``` txt
word_to_be_changed=suggested_word
```

## Option 2: Use the add command

There is a add command on the inclusivelint to add new words and suggestions to the dict. To use it do:

``` sh
./inclusivelint -a -w word_to_be_changed -t error -r replacement_suggestion
```

- **-a:** add word flag. Mandatory if adding a new word.
- **-w:** word to be blocked.
- **-t:** type of the new relation. It can be error or warning.
- **-r:** replacement word suggestion.
