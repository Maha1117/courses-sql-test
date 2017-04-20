---
title       : Testing SQL
description : Testing SQL

--- type:NormalExercise xp:100 key:c778ff1b1a
## Example of NormalExercise

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

This is a normal exercise

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
```

--- type:NormalExercise lang:sql xp:100 skills:1 key:128f0008cd
## Idea behind SCT helpers


*** =instructions

*** =hint

*** =pre_exercise_code
```{sql}
connect("postgresql", "dvdrental")
```

*** =sample_code
```{sql}
SELECT COUNT(*) FROM film WHERE film_id < 5
```

*** =solution
```{sql}
SELECT COUNT(*) FROM film WHERE film_id < 5
```

*** =sct
```{python}

# Note: this is to demonstrate that normal sqlwhat tests can be created in an
#       sct block.
def sct_target_call(state, code, call_name):
    msg_no_call = "Did you use the function `%s` in your code?" % call_name
    msg_incorrect_call = "Is your code for `%s` correct?"%call_name
    
    check_node(state, 'Call', missing_msg = msg_no_call, priority=99)
    has_equal_ast(state, msg_incorrect_call, sql=code, start='standard_function', exact = False)

Ex().check_node('SelectStmt') \
    .multi(lambda state: sct_target_call(state, "COUNT(*)", "COUNT"))
    
```

--- type:NormalExercise lang:sql xp:100 skills:1 key:63a6c51e9d
## SCT helpers UNLEASHEDDDD


*** =instructions

*** =hint

*** =pre_exercise_code
```{python}
# Note this is hacky, but demonstrates loading external SCTs
# TODO: provide convenience function for requirements.sh to
#       where user specifies link to helper file, e.g. (in bash)
#           custom_scts course_3165/datasets/sct_helper.py
#
#       custom SCT file is then copied into site-packages, or somewhere similar
import urllib.request
import sys, imp

# download code that was uploaded as course asset
# since teach does not accept .py files, just used .txt
code = urllib.request.urlopen('https://s3.amazonaws.com/assets.datacamp.com/production/course_3165/datasets/sct_helper.txt').read()

# create a new module from code
mod = imp.new_module('sct_helpers')
exec(code, mod.__dict__)

# put module into sys.modules (which is where a module is put during an import statement)
sys.modules['sct_helpers'] = mod

connect("postgresql", "dvdrental")
```

*** =sample_code
```{sql}
-- correct answer
SELECT COUNT(*) FROM film WHERE film_id < 5

-- no COUNT func
-- SELECT id FROM film WHERE film_id < 5

-- wrong COUNT func
-- SELECT COUNT(id) FROM film WHERE film_id < 5

```

*** =solution
```{sql}
SELECT COUNT(*) FROM film WHERE film_id < 5
```

*** =sct
```{sql}
from sct_helpers import sct_target_call
Ex().check_node('SelectStmt') \
    .multi(lambda state: sct_target_call(state, "COUNT(*)", "COUNT"))
    
```
