#!/bin/bash
# =======================
# FOR LOOP EXAMPLES
# =======================

echo "===== FOR LOOP EXAMPLES ====="

# 1. Print numbers 1 to 5
for i in 1 2 3 4 5
do
  echo "Number: $i"
done

echo "------------------------------"

# 2. Print numbers using sequence
for i in $(seq 1 5)
do
  echo $i
done

echo "------------------------------"

# 3. Print numbers using range syntax
for i in {1..5}
do
  echo $i
done

echo "------------------------------"

# 4. Print even numbers (with step)
for i in {2..10..2}
do
  echo "Even number: $i"
done

echo "------------------------------"

# 5. Loop through a list of names
for name in Anis Rahim Karim Sima
do
  echo "Hello, $name"
done

echo "------------------------------"

# 6. Loop through files in current directory
for file in *
do
  echo "Found file: $file"
done

echo "------------------------------"

# 7. Loop through .txt files only
for file in *.txt
do
  echo "Processing $file"
done

echo "------------------------------"

# 8. Using C-style for loop
for ((i=1; i<=5; i++))
do
  echo "Count: $i"
done

echo "------------------------------"

# 9. Sum of numbers 1 to 5
sum=0
for i in {1..5}
do
  sum=$((sum+i))
done
echo "Sum = $sum"

echo "------------------------------"

# 10. Loop with sleep (delayed printing)
for i in {1..5}
do
  echo "Printing after 1 second: $i"
  sleep 1
done

echo "===== END OF SCRIPT ====="
