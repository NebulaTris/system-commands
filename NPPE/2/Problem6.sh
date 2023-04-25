: '
Write a bash script that prints the sum of all even numbers of an array of numbers. The array variable is named as number_arr. 
'
#Solution
script(){
read -a number_arr
sum=0
for num in ${number_arr[@]}; do
    if [ $((num%2)) -eq 0 ]; then
        ((sum+=$num))
    fi
done
echo $sum
}
