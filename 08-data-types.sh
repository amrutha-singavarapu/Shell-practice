#!/bin/bash

NUM1=100
NUM2=Amrutha

SUM=$(($NUM1+$NUM2))

echo "Sum is: $SUM"

#Array
FRUITS=("Apple" "Orange" "Kiwi")

echo "fruits are: ${FRUITS[@]}"
echo "first fruit is: ${FRUITS[0]}"
echo "second fruit is: ${FRUITS[1]}"
echo "third fruit is: ${FRUITS[2]}"