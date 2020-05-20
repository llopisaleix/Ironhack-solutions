"""
This is a dumb calculator that can add and subtract whole numbers from zero to five.
When you run the code, you are prompted to enter two numbers (in the form of English
word instead of number) and the operator sign (also in the form of English word).
The code will perform the calculation and give the result if your input is what it
expects.

The code is very long and messy. Refactor it according to what you have learned about
code simplicity and efficiency.
"""


# Function to execute the desired operation. Takes a and c as ints and b as text.
def operation(a, b, c):
    if b == 'plus':
        return a + c
    elif b == 'minus':
        return a - c


# Read the text number and translate it to int.
def int_to_text(x):
    for t, i in int_translate.items():
        if i == abs(x):
            result = t
            break
    if x < 0:
        return 'minus %s' % t
    else:
        return t

# Create lists of allowed inputs
allowed_int = ['zero', 'one', 'two', 'three', 'four', 'five']
allowed_operations = ['plus', 'minus']

# Create a dictionary that will translate the text to int.
int_translate = {
    'zero': 0,
    'one': 1,
    'two': 2,
    'three': 3,
    'four': 4,
    'five': 5,
    'six': 6,
    'seven': 7,
    'eight': 8,
    'nine': 9,
    'ten': 10
}

print('Welcome to this calculator!')
print('It can add and subtract whole numbers from zero to five')

# Set input to false and if not in the allowed lists keep asking for it.
a = b = c = False
while a not in allowed_int:
    a = input('Please choose your first number (zero to five): ')

while b not in allowed_operations:
    b = input('What do you want to do? plus or minus: ')

while c not in allowed_int:
    c = input('Please choose your second number (zero to five): ')

result = int_to_text(operation(int_translate[a], b, int_translate[c]))

print(a, b, c, 'equals', result)
print("Thanks for using this calculator, goodbye :)")
