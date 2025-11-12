#!/bin/bash
adults=0
minors=0
 for var in $(ls $1)
do
for file_info in $(cat $1$var)
do
age=$(echo $file_info | cut -d ":" -f2)
if [ "$age" -ge 18 ]
then ((adults++))
else ((minors++))
fi
done
done
echo -e "совершеннолетние: $adults, несовершеннолетние: $minors"
