#!/bin/bash

read -p "Введите путь до библиотеки: " library
read -p "Введите исполнителя: " del_singer

#Удаление в unsort
unsort_file=$(find "$library/unsort" -type f -name "singer.txt" -exec grep -r -i -s -l "$del_singer" {} \;)
#echo $unsort_file
path=$(dirname $unsort_file)
#echo $path
rm -rf $path

#Удаление в singer
sort_file=$(find "$library/sort/singer/$del_singer" -type l)
rm -rf $library/sort/singer/$del_singer
name=($(basename -a $sort_file))
#echo $name

#Удаление во всём sort
for index in ${!name[*]}
do
find "$library/sort" -type l -iname "${name[$index]##*.}" -exec rm -f {} \+
done

find "$library/sort" -type d -empty -delete
