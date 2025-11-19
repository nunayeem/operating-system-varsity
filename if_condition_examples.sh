#!/bin/bash
# =======================
# IF CONDITION EXAMPLES
# =======================

echo "===== IF CONDITION EXAMPLES ====="

# 1. Check if a number is positive
num=5
if [ $num -gt 0 ]
then
  echo "Number is positive"
fi

echo "------------------------------"

# 2. Check if two numbers are equal
a=10
b=10
if [ $a -eq $b ]
then
  echo "Both numbers are equal"
fi

echo "------------------------------"

# 3. Check if a file exists
file="test.txt"
if [ -e "$file" ]
then
  echo "File exists"
else
  echo "File does not exist"
fi

echo "------------------------------"

# 4. Check if a directory exists
dir="/tmp"
if [ -d "$dir" ]
then
  echo "Directory exists"
else
  echo "Directory does not exist"
fi

echo "------------------------------"

# 5. Check if a string is empty or not
str="Hello"
if [ -n "$str" ]
then
  echo "String is not empty"
else
  echo "String is empty"
fi

echo "------------------------------"

# 6. If-else condition
age=20
if [ $age -ge 18 ]
then
  echo "You are an adult"
else
  echo "You are a minor"
fi

echo "------------------------------"

# 7. If-elif-else condition
marks=75
if [ $marks -ge 80 ]
then
  echo "Grade: A+"
elif [ $marks -ge 60 ]
then
  echo "Grade: A"
else
  echo "Grade: B"
fi

echo "------------------------------"

# 8. Check if a file is readable
file="test.txt"
if [ -r "$file" ]
then
  echo "File is readable"
else
  echo "File is not readable"
fi

echo "------------------------------"

# 9. Check if a command was successful
ping -c 1 google.com &> /dev/null
if [ $? -eq 0 ]
then
  echo "Internet is working"
else
  echo "No internet connection"
fi

echo "------------------------------"

# 10. Combine conditions with AND / OR
a=10
b=20
if [ $a -lt 15 ] && [ $b -gt 15 ]
then
  echo "Both conditions are true"
else
  echo "Condition failed"
fi

echo "===== END OF SCRIPT ====="
