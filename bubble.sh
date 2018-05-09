#!/bin/bash

# Sort an bash array using Bubble Sort

# Array to Sort
arr=(420 3 10 22 4 99 100 2 123 42)
# Get size of array
size=${#arr[@]}

# C style Bash for-loop
for ((i = 0; i < $size; i++))
do
    # At i'th iteration right most i elements are sorted and in place.
    for((j = i; j < $size - i - 1; j++))
    do
        if ((${arr[j]} > ${arr[$((j+1))]}))
        then
        # Swap the correct elements.
        # YOUR CODE GOES HERE 
        temp=${arr[$j]}
        arr[$j]=${arr[$((j+1))]}
        arr[$((j+1))]=$temp
        fi
    done
done

echo "Sorted Array: "
echo ${arr[*]}
