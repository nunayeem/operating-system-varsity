#!/bin/bash
# =======================
# WHILE LOOP EXAMPLES
# =======================

echo "===== WHILE LOOP EXAMPLES ====="

# 1. Print numbers 1 to 5
i=1
while [ $i -le 5 ]
do
  echo "Number: $i"
  i=$((i+1))
done

# 2. Countdown from 5 to 1
n=5
while [ $n -ge 1 ]
do
  echo $n
  n=$((n-1))
done

# 3. Read input until user types “stop”
word=""
while [ "$word" != "stop" ]
do
  read -p "Type something (or 'stop' to quit): " word
done

# 4. Print even numbers from 2 to 10
n=2
while [ $n -le 10 ]
do
  echo $n
  n=$((n+2))
done

# 5. Sum numbers 1 to 5
sum=0
i=1
while [ $i -le 5 ]
do
  sum=$((sum+i))
  i=$((i+1))
done
echo "Sum = $sum"

# 6. Display files in a directory
echo "Files in current directory:"
count=1
for f in $(ls); do echo "File $count: $f"; count=$((count+1)); done

# 7. Loop while file exists
file="test.txt"
echo "Creating test.txt temporarily..."
touch $file
count=0
while [ -e "$file" ]
do
  echo "File exists. Waiting..."
  sleep 1
  count=$((count+1))
  [ $count -eq 3 ] && rm -f "$file"
done
echo "File removed."

# 8. Print 10 stars
i=1
while [ $i -le 10 ]
do
  echo -n "*"
  i=$((i+1))
done
echo

# 9. Read 3 names
count=1
while [ $count -le 3 ]
do
  read -p "Enter name $count: " name
  echo "Hello, $name"
  count=$((count+1))
done

# 10. Keep looping until user presses Ctrl+C
# (uncomment to run manually)
# while true
# do
#   date
#   sleep 2
# done


# =======================
# UNTIL LOOP EXAMPLES
# =======================

echo "===== UNTIL LOOP EXAMPLES ====="

# 1. Print numbers 1 to 5
i=1
until [ $i -gt 5 ]
do
  echo $i
  i=$((i+1))
done

# 2. Countdown from 5 to 1
n=5
until [ $n -lt 1 ]
do
  echo $n
  n=$((n-1))
done

# 3. Run until user types “exit”
input=""
until [ "$input" = "exit" ]
do
  read -p "Type something (exit to quit): " input
done

# 4. Print even numbers up to 10
i=2
until [ $i -gt 10 ]
do
  echo $i
  i=$((i+2))
done

# 5. Wait until a file appears
echo "Waiting for ready.txt file... (creating after 3 seconds)"
(sleep 3 && touch ready.txt) &
until [ -e "ready.txt" ]
do
  echo "Still waiting..."
  sleep 1
done
echo "File found!"
rm -f ready.txt

# 6. Loop until user enters a number greater than 10
num=0
until [ $num -gt 10 ]
do
  read -p "Enter a number greater than 10: " num
done
echo "Good job!"

# 7. Countdown using until
x=10
until [ $x -lt 1 ]
do
  echo "Countdown: $x"
  x=$((x-1))
done

# 8. Keep pinging until network works
echo "Testing network connectivity..."
until ping -c 1 google.com &> /dev/null
do
  echo "Network down, retrying..."
  sleep 2
done
echo "Network is up!"

# 9. Wait until a directory exists
echo "Waiting for /tmp/myfolder... (creating after 2 sec)"
(sleep 2 && mkdir -p /tmp/myfolder) &
until [ -d "/tmp/myfolder" ]
do
  echo "Still waiting..."
  sleep 1
done
echo "Directory found!"
rm -rf /tmp/myfolder

# 10. Run until counter equals 5
count=0
until [ $count -eq 5 ]
do
  echo "Count is $count"
  count=$((count+1))
done

echo "===== END OF SCRIPT ====="
