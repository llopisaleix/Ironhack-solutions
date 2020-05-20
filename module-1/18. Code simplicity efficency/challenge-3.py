"""
You are presented with an integer number larger than 5. Your goal is to identify the longest side
possible in a right triangle whose sides are not longer than the number you are given.

For example, if you are given the number 15, there are 3 possibilities to compose right triangles:

1. [3, 4, 5]
2. [6, 8, 10]
3. [5, 12, 13]

The following function shows one way to solve the problem but the code is not ideal or efficient.
Refactor the code based on what you have learned about code simplicity and efficiency.
"""


def get_longest_side(max_side):
    solutions = [[x, y, z] for x in range(5, max_side) for y in range(4, max_side) for z in range(3, max_side) if x**2 == y**2 + z**2]
    m = 0
    for solution in solutions:
        if m < max(solution):
            m = max(solution)
    return m


size = int(input("What is the maximal length of the triangle side? Enter a number: "))
print("The longest side possible is", get_longest_side(size))
