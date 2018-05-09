#!/bin/bash

cat /dev/urandom | tr -dc 'a-f' | head -c 1000000 > chardump.txt

counts=()
alphas=("a" "b" "c" "d" "e" "f")
index=0
for i in "${alphas[@]}"; do
	counts[$index]=$(grep -o $i "chardump.txt" | wc -l)
	let index=index+1
done


i=0
sum=0
while [ $i -lt "${#alphas[@]}" ]; do
  echo "Count of char ${alphas[$i]} is ${counts[$i]}"
  let sum=sum+"${counts[$i]}"
  let i=i+1
done

echo "Sum found: $sum"
