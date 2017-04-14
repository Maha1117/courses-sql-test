---
title       : SCT Examples
description : Insert the chapter description here
--- type:NormalExercise lang:sql xp:100 skills:1 key:ce43470333
## Where clauses with multiple expressions


*** =instructions

*** =hint

*** =pre_exercise_code
```{sql}
connect('postgres', 'dvdrental')
```

*** =sample_code
```{sql}
SELECT * 
FROM film
WHERE film_id < 5
AND release_year = 2006;
```

*** =solution
```{sql}
SELECT * 
FROM film
WHERE release_year = 2006
AND film_id < 5;
```

*** =sct
```{sql}

Ex().check_node('SelectStmt') \
    .check_field('where_clause') \
    .has_equal_ast(sql = "film_id < 5", start="expression", exact = False)
```
