echo "enter the number:"
read a
echo "enter the number:"
read b
if (( a > b ))
then
echo "$a is greater than $b"
else
echo "$b is greater than $a"
fi