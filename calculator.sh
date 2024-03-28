#!/bin/bash
#This is go introduce a new concept known as "Merge Conflict" ###########
# This Function is used to perform addition
addition() {
    echo "$1 + $2" | bc
}

#This Function used to perform subtraction
subtraction() {
    echo "$1 - $2" | bc
}

# This Function is used  to perform multiplication
multiplication() {
    echo "$1 * $2" | bc
}

#This Function is used to perform division
division() {
    echo "scale=2; $1 / $2" | bc
}

# Main script starts here
echo "Welcome to Command-line Calculator"
echo "Enter the operation you want to perform:"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"

read -p "Enter your choice (1-4): " choice

read -p "Enter the first number: " num1
read -p "Enter the second number: " num2

case $choice in
    1) result=$(addition $num1 $num2)
       ;;
    2) result=$(subtraction $num1 $num2)
       ;;
    3) result=$(multiplication $num1 $num2)
       ;;
    4) if [ $num2 -eq 0 ]; then
           echo "Error: Division by zero!"
           exit 1
       fi
       result=$(division $num1 $num2)
       ;;
    *) echo "Invalid choice!"
       exit 1
       ;;
esac

echo "Result: $result"
#EOF
