---
title       : Testing SQL
description : Testing SQL

--- type:NormalExercise xp:100 key:c778ff1b1a
## Example of NormalExercise

This is a SQL normal exercise.

*** =instructions
- Just experiment!

*** =hint
Here's a hint

*** =pre_exercise_code
```{python}
connect('postgresql', 'dvdrental')
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
# not supported yet
# success_msg('You are fabulous')
```


--- type:MultipleChoiceExercise xp:50 key:565ae9c1eb
## Example of MultipleChoiceExercise

This is a sql multiple choice exercise.

*** =instructions
- First choice
- Second choice (correct one)
- third choice
- last choice

*** =pre_exercise_code
```{python}
connect('postgresql', 'dvdrental')
```

*** =sct
```{python}
msg1 = "Wrong 1"
msg2 = "Option 2 is correct, great!"
msg3 = "Wrong 2"
msg4 = "Wrong 3"
Ex().test_mc(2,[msg1,msg2,msg3,msg4])
```

--- type:NormalExercise xp:100 key:b88e30c6b7
## Example of NormalExercise testing where clause

*** =instructions
- Select all columns from the `film` table, where `film_id` is less than 5.

*** =hint
Here's a hint

*** =pre_exercise_code
```{sql}
connect("postgresql", "dvdrental")
```

*** =sample_code
```{sql}
SELECT * FROM film ____
```

*** =solution
```{sql}
SELECT * FROM film WHERE film_id < 5

```

*** =sct
```{sql}
Ex().check_result()
Ex().check_statement("select") \
    .check_clause("where_clause") \
    .has_equal_ast(msg="result looks correct, but AST doesn't match")
```
