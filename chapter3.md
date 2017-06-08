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
SELECT film_id, title FROM film;
```

*** =solution
```{sql}
SELECT film_id, title FROM film;
```

*** =sct
```{sql}
from sqlwhat_ext import check_result2

check_result2(['film_id', 'title'])
```
