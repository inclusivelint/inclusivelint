def parse_line(line):
    splitted_line = line.split('|')
    return splitted_line[3], splitted_line[4]

def refine_key(key):
    return key.replace('`','').lstrip().rstrip()

def refine_value(value):
    return value.replace('`','').lstrip().rstrip()

def construct_dict_entry(words_relation, key, value):
    if key.find(',') != -1:
        for unique_key in key.split(','):
            words_relation[delete_parentheses_words(unique_key.lstrip())] = value
    else:
        words_relation[delete_parentheses_words(key)] = value

def parse_table(filename):
    words_relation = {}
    f = open(filename, 'r')

    for line in f.read().split('\n')[2:]:
        avoid_word, allowed_word = parse_line(line)
        key = refine_key(avoid_word)
        value = refine_value(allowed_word)
        construct_dict_entry(words_relation, key, value)
    
    return words_relation

def write_dict_to_output(dict, output_file):
    for key,value in dict.items():
        line_to_write = key + '=' + value + "\n"
        output_file.write(line_to_write)
    
    output_file.close()
    return

def delete_parentheses_words(word):
    return word.replace(' (male)', '').replace(' (female)', '').replace(' (a)','').replace(' (b)','')

words_relation_dict = parse_table('wordsTable.md')
output_file = open('outputRelation.txt', 'a')
write_dict_to_output(words_relation_dict, output_file)

