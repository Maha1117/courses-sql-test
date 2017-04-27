---
title       : Testing subexercises
description : This thing is meant to test subexercises

--- type:TabExercise key:ed98f7522c
## TabExercise

This is a tabexercise. Great! Super great!
XP should be defined at the subexercise level

*** =pre_exercise_code
```{python}
connect('postgresql', 'dvdrental')
```

*** =sample_code
```{sql}
-- sql code comes here
```

*** =type1: NormalExercise
*** =xp1: 10
*** =key1: e7cd8d45cb0

*** =instructions1
Select the `film_id` from film

*** =hint1
Here's a hint for instruction 1: use `film_id`

*** =solution1
```{sql}
SELECT film_id FROM film;
```

*** =sct1
```{python}
Ex().check_result()
```

*** =type2: MultipleChoiceExercise
*** =xp2: 20
*** =key2: 216ce6d2106

*** =question2
What do you think?

*** =possible_answers2
- One
- Two
- Three
- Four

*** =sct2
```{python}
msg1 = "Option 1 is wrong.."
msg2 = "Option 2 is correct, great!"
msg3 = "Option 3 is wrong.."
msg4 = "Option 4 is wrong.."
Ex().test_mc(2,[msg1,msg2,msg3,msg4])
```

*** =type3: NormalExercise
*** =xp3: 30
*** =key3: f643f41db4

*** =instructions3
Select the `film_id` and `title` from `film`.

*** =hint3
Here's a hint for instruction 3: Use `film_id, title`.

*** =solution3
```{sql}
SELECT film_id, title FROM film
```

*** =sct3
```{python}
Ex().check_result()
```

*** =type4: NormalExercise
*** =xp4: 40
*** =key4: 2805953617

*** =instructions4
Select all columns from `film`.

*** =solution4
```{sql}
SELECT * FROM film
```

*** =sct4
```{python}
Ex().check_result()
```

*** =type5: NormalExercise
*** =xp5: 50
*** =key5: b78ff98e7e

*** =instructions5
Get all columns from `film`, but just get 5 rows.

*** =hint5
Here's a hint for task 5: Use `LIMIT 5`.

*** =solution5
```{sql}
SELECT * FROM film LIMIT 5
```

*** =sct5
```{python}
Ex().check_result()
```


--- type:BulletExercise key:c7a90c47b5
## BulletExercise Example

This is a tabexercise. Great! Super great!
XP should be defined at the subexercise level

*** =pre_exercise_code
```{python}
connect('postgresql', 'dvdrental')
```

*** =sample_code
```{sql}
-- sql code comes here
```

*** =type1: NormalExercise
*** =key1: 17fb51e1fb

*** =xp1: 10

*** =instructions1
Select the `film_id` from film

*** =hint1
Here's a hint for instruction 1: use `film_id`

*** =solution1
```{sql}
SELECT film_id FROM film;
```

*** =sct1
```{python}
Ex().check_result()
```

*** =type2: NormalExercise
*** =key2: 0e5b9884bc

*** =xp2: 20

*** =instructions2
Select the `film_id` and `release_year` from `film`.

*** =hint3
Here's a hint for instruction 2: Use `film_id, release_year`.

*** =solution2
```{sql}
SELECT film_id, release_year FROM film
```

*** =sct2
```{python}
Ex().check_result()
```

*** =type3: NormalExercise
*** =key3: d3074060cf

*** =xp3: 30

*** =instructions3
Select the `film_id` and `title` from `film`.

*** =hint3
Here's a hint for instruction 3: Use `film_id, title`.

*** =solution3
```{sql}
SELECT film_id, title FROM film
```

*** =sct3
```{python}
Ex().check_result()
```

*** =type4: NormalExercise
*** =key4: d60bba8c52

*** =xp4: 40


*** =instructions4
Select all columns from `film`.

*** =solution4
```{sql}
SELECT * FROM film
```

*** =sct4
```{python}
Ex().check_result()
```

*** =type5: NormalExercise
*** =key5: 90a9ce16f3

*** =xp5: 50

*** =instructions5
Get all columns from `film`, but just get 5 rows.

*** =hint5
Here's a hint for task 5: Use `LIMIT 5`.

*** =solution5
```{sql}
SELECT * FROM film LIMIT 5
```

*** =sct5
```{python}
Ex().check_result()
```

--- type:NormalExercise key:fd0fe7b82c
## BulletExercise 2

This is a SQL normal exercise, with explicit write access in the PEC.

*** =instructions
- Just experiment!

*** =hint
Here's a hint

*** =pre_exercise_code
```{python}
connect('postgresql', 'dvdrental')
set_options(write_access=True)
```

*** =sample_code
```{sql}
-- sql code comes here
```

*** =solution
```{sql}
SELECT film_id, title FROM film;
```

*** =sct
```{python}
Ex().check_result()
```

--- type:NormalExercise key:0c415aad79
## BulletExercise

This is a SQL normal exercise, with explicit write access in the PEC.

*** =instructions
- Just experiment!

*** =hint
Here's a hint

*** =pre_exercise_code
```{python}
connect('postgresql', 'dvdrental')
set_options(write_access=True)
```

*** =sample_code
```{sql}
-- sql code comes here
```

*** =solution
```{sql}
SELECT film_id, title FROM film;
```

*** =sct
```{python}
Ex().check_result()
```
