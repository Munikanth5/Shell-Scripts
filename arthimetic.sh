#!/bin/bash

# Get user input
echo "Enter the first number:"
read num1

echo "Enter the second number:"
read num2

# Perform arithmetic operations
sum=$(($num1 + $num2))
difference=$(($num1 - $num2))
product=$(($num1 * $num2))
quotient=$(($num1 / $num2))

# Display results
echo "The sum of $num1 and $num2 is $sum"
echo "The difference of $num1 and $num2 is $difference"
echo "The product of $num1 and $num2 is $product"
echo "The quotient of $num1 and $num2 is $quotient"

