"""
HANDSHAKE CHALLENGE

You will need to:
- Write a function that takes an integer for the number of people and returns an integer with the number of handshakes
- There is a 6 mark penalty for not making it recursive.
   -> HINT: For those doing non-recursive, there is a formula online for this problem that generalises the equation
- Validate if a handshake can occur given X as an input
- Identify an error state and throw a custom exception
- Create a test file for the function and create a comprehensive test suite

"""

def no_of_handshakes(no_people):

    # Define what happens if there are not enough people to shake hands:
    if no_people <= 1:
        return 0

    else:
        handshakes = (no_people * (no_people - 1)) // 2
        return handshakes

# Write some test code:
try:
    #expect output 10
    print(no_of_handshakes(5))
    #expect output 45
    print(no_of_handshakes(10))
    #expect error output
    print(no_of_handshakes(-5))



