# Phase 5 DS&A Assessment: First Spicy Batch

In this assessment, you will get an opportunity to practice using the Data
Structures and Algorithms skills you have built over the course of the program.

The purpose of this assessment is to give you more exposure to DS&A problems and
to get feedback on your solution from your instructor. This assessment has a
rubric that will allow for your instructor to evaluate your submission and
provide feedback, but the grade will have no impact on your successful
completion of the program.

## Instructions

You are a restaurant manager at the hottest new burrito spot in town, _Spicy
Beans_, and because of overwhelming demand, have had to hire a new cook to help
cook the beans for the burritos. Unfortunately, the new cook didn't read the
recipe correctly and just took your restaurant's name in to consideration when
they started cooking, making every batch of beans they made way to spicy!

Suppose you have `n` batches of beans [1, 2, 3, ..., n] and you want to find out
which was the first spicy one, so that you can put a warning label on all the
subsequent batches.

![beans](https://curriculum-content.s3.amazonaws.com/phase-5/dsa-assessment-first-spicy-batch/phase-5-dsa-beans-1.png)

You are given a method that returns a boolean, `#is_spicy_batch(batch)` which
returns whether a batch is spicy. Implement a method, `#first_spicy_batch`, to
find the first spicy batch. You should minimize the number of calls to the given method.


Examples:

```rb
# Input: n = 11, spicy = 3
# Output: 4
is_spicy_batch(6) # => true
is_spicy_batch(3) # => true
is_spicy_batch(2) # => false

# Batch 3 is the first spicy batch.
```

```rb
# Input: n = 1, spicy = 1
# Output: 1
is_spicy_batch(1) # => true

# Batch 1 is the first spicy batch.
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
