#!/bin/bash

# print the number divisble by 3 nad divisble by 5 and not 15

for i in {1..100}; do
if ([ `expr $i % 3` == 0 ] || [ `expr $i % 5` == 0 ]) && [ `expr $i % 15` != 0 ];
then 
    echo $i
fi;
done


# print the word count of your letter

x=mississippi
# we find the word and send output
grep -o "s" <<< "$x" | wc -l
