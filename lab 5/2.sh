clear
echo " enter your string "
read n
h=` expr $n | rev `
echo $h
if [ $h = $n ]
then
echo "palindrome"
else
echo "not a palindrome"
fi

