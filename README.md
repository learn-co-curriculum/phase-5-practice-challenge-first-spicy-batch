# Phase 5 DS&A Assessment: First Bad Batch

In this assessment, you will get an opportunity to practice using the Data
Structures and Algorithms skills you have built over the course of the program.

The purpose of this assessment is to give you more exposure to DS&A problems and
to get feedback on your solution from your instructor. This assessment has a
rubric that will allow for your instructor to evaluate your submission and
provide feedback, but the grade will have no impact on your successful
completion of the program.

## Instructions

You are a restaurant manager at the hottest new burrito spot in town, Spicy
Beans, and because of overwhelming demand, have had to hire a new cook to help
cook the beans for the burritos. Unfortunately, the new cook didn't read the
recipe correctly and just took your restaurant's name in to consideration when
they started cooking, making every batch of beans they made way to spicy!


Suppose you have n versions [1, 2, ..., n] and you want to find out the first
bad one, which causes all the following ones to be bad.

You are given an API bool isBadVersion(version) which returns whether version is
bad. Implement a function to find the first bad version. You should minimize the
number of calls to the API.

Create a method `#first_bad_batch` that takes a string value as input and returns
a "fixed" version of the string.

The input string will consist of uppercase and lowercase letters. To "fix" the
string, your algorithm will need to identify and remove any adjacent pairs of
characters in which:

- the characters are the same letter, and
- one is uppercase and the other is lowercase

This process should be repeated until there are no adjacent pairs of the same
uppercase and lowercase characters. Once all the "bad" pairs of characters have
been removed, your method should return the fixed string.

Examples:

```rb
fix_the_string('AaalgoOorithmsS')
# => "algorithm"

fix_the_string('abBAC')
# => "C"

fix_the_string('')
# => ""
```

Remember the process:

1. Rewrite the problem in your own words
2. Write your own test cases
3. Pseudocode
4. Code
5. Refactor to make it clean and readable
6. Refactor to optimize

Once you have a complete solution, run the test suite using `learn test` as a
final check.
