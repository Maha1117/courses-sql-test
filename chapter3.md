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


--- type:BulletExercise key:0c415aad79
## BulletExercise

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
*** =key1: 6f24d6b83e

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
*** =xp2: 20
*** =key2: a2bdf24e72

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
*** =xp3: 30
*** =key3: 23c3851420

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
*** =key4: d80ef59dc4

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
*** =key5: d3e911dad5

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
