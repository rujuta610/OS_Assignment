clear
echo "your word is : $1 "
echo "number of times you want to print the word : $2 "
n=$1
p=$2

i=0

while [ $i -lt $p ]
do 
echo $n
i=` expr $i + 1 `
done
