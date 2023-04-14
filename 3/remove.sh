#!/bin/bash

read -p "Введите исполнителя: " del_singer

#Удаление в unsort
unsort_file=$(find "/home/smhnv/labs/3/unsort" -type f -name "singer.txt" -exec grep -r -i -s -l "$del_singer" {} \;)
#echo $unsort_file
path=$(dirname $unsort_file)
#echo $path
rm -rf $path

#Удаление в singer
sort_file=$(find "/home/smhnv/labs/3/sort/singer/$del_singer" -type l)
rm -rf /home/smhnv/labs/3/sort/singer/$del_singer
name=($(basename -a $sort_file))

for index in ${!name[*]}
do
find "/home/smhnv/labs/3/sort" -type l -iname "${name[$index]##*.}" -exec rm -f {} \+
find "/home/smhnv/labs/3/sort" -type d -empty -delete
done
