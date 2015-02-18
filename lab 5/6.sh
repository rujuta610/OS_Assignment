clear
b=` expr $1 + 1 `
a=` expr $1 \* $b `  
c=` expr $a \/ 2 `
echo "the sum is : $c "
