### SQL Test 

Q1 B 

Q2 B 

Q3 A 

Q4 B 

Q5 A 


### Section 2 query evaluation 
Error 1:

The part of the query that reads `OR department_name = NULL` should actually have the = replaced with `IS` and read as the following: 
`OR department_id IS NULL`

Error 2: 

In the  WHERE subquery, the two following lines should be seperated: 
`department_id = (SELECT department_id FROM departments WHERE department_name = 'Cardiology'`
and
`OR department_id = NULL)`

They should have their own brackets and read as the following, with the bracker closing after "cardiology"

`department_id = (SELECT department_id FROM departments WHERE department_name = 'Cardiology')`

`OR department_id IS NULL` 


This code could be improved by providing a more meaningful alais for `admissions_count`. Instead `total_admissions` might be 
more clear. 
The code selects patients with admissions in cardiology, but also patients who have been admitted and don't have a department_id
recorded (i.e. null). This might bring up admissions to other dpeartments that have been mislabelled. This would alter the result of
the investigation, perticulalry if the same person has been admitted multiple times to differnt departments and the deprtment is 
has not been recorded multiple times. 
The final line `LIMIT 1` means the output will only have one row. However, if there are mutliple patients with the same highest 
number of admissions, only one patient will be identified. 
This database could probably be further normalised. It is possible there are multiple departments with the name 'Cardiology'. Instead a unique identifier should be used. 


## Section 3





