### Python Questions 

## Section 1 MC
Q1. A 6.5

Q2  C

Q3  D 

Q4  C 

Q5  D 

## Section 2 Feedback on code: 

Error 1: When attempting to write a list of numbers, the variable "numbers" has been entered as a 
string, not as a list. 
To improve: Enter the list as: 
`numbers = [3, 7, 2, 9, 5]`

Error 2:  There should be a colon after the `if` statement. 
To improve: This line should be corrected to: 

`if num < max_num:`

Error 3: Indentation error - `return` is in the wrong place. 
To improve: `return` should be outside the for loop as below: 
`
for num in numbers:
    if num < max_num:  
        max_num = num
return max_num` 

Error 4: There is a missing comma between `"Maximum number is:"` and `find_max(numbers)`

To improve: This code should be corrected to: 

`print("Maximum number is:", find_max(numbers))`


Error 5: The less than symbol used instead of the more than symbol.  

To improve: The code should read: 

`if num > max_num:`


Error 6: ?
To improve: ?

General Feedback: 
This code could be simplified by using the following built-in function. 
This reduces the complexity of the code. 

`numbers = [3, 7, 2, 9, 5]`

`max_num = max(numbers)`

`print("Maximum number is:", max_num)`



