# Number Theory: Subtraction

In this lab you've learned the basics of number theory as it relates to subtraction.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Madison Hickey & Austin Maples

## Summary
In this lab we learned how subtraction works in binary. We built a Half Subtractor and compared it to the Half Adder from the previous lab to see how borrowing is different from carrying. Then we worked with One’s Complement and learned how the end around carry works. Finally, we implemented a Two’s Complement converter and saw why Two’s Complement is the standard way computers represent negative numbers.

## Lab Questions

### 1 - Explain the differences between our Half Adder from last lab and the Half Subtractor from this lab.
The Half Adder adds two bits and outputs a Sum and Carry. The Half Subtractor subtracts two bits and outputs a Difference and Borrow. Both use XOR for the main output, but the second output is different. The Half Adder produces a Carry when both inputs are 1, while the Half Subtractor produces a Borrow when we subtract 1 from 0.

### 2 - What about the end around carry of One’s Complement makes it hard to use and implement?
The end-around carry means if there’s a carry out of the last bit, you have to add it back to the first bit. That makes the circuit more complicated and can cause issues like combinational loops if wired incorrectly. It’s just more work compared to normal addition.

### 3 - What is the edge case and problem with Two’s Complement number representation?
The smallest negative number doesn’t have a positive equivalent. For example, in 8 bits, -128 exists but +128 doesn’t. This can cause overflow problems when trying to negate the smallest number.

