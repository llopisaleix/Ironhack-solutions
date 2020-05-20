"""
The code below generates a given number of random strings that consists of numbers and 
lower case English letters. You can also define the range of the variable lengths of
the strings being generated.

The code is functional but has a lot of room for improvement. Use what you have learned
about simple and efficient code, refactor the code.
"""
from random import choice
from sys import exit


# Function takes desired length (defaults to 12) and desired character list (defaults a-z & 0-9)
# Function return string of random characters from character list with desired length
def random_string_generator(length=12, char_list=['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','0','1','2','3','4','5','6','7','8','9']):
    string = ''
    while len(string) < length:
        string += choice(char_list)
    return string


# Function creates the desired number of strings with a (random) length between the selected interval
# Function takes three parameters: strings = Number of strings to generate
# min_length: minimum amount of characters in string; max_length: maximum amount of characters in string
def batch_string_generator(strings, min_length=8, max_length=12):
    r = []
    for i in range(strings):
        if min_length < max_length:
            string_length = choice(range(min_length, max_length))
        elif min_length == max_length:
            string_length = min_length
        else:
            exit('Incorrect min and max string lengths. Try again.')
        r.append(random_string_generator(string_length))
    return r


min_len = input('Enter minimum string length: ')
max_len = input('Enter maximum string length: ')
total_str = input('How many random strings to generate? ')
print(batch_string_generator(int(total_str), int(min_len), int(max_len)))
