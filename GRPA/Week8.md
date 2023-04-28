# GRPA 1
Write a Bash script to reconstruct the Shopping Bill dataset from the OCR data files and store it in a separate file for each card. The reconstructed dataset should contain one file for each card with the name shopping_bill_<card_number>.txt,  "<card_number>" is a number of the card e.g. '1', '4', '12', '24' etc.</br>

The generated files should contain the data in the format given below.</br>
SHOPNAME:CUSTOMER_NAME:CARD_NO</br>
Item:Category:Qty:Price:Cost</br>
Carrots:Vegetable/Food:1.5:50:75</br>
....
....

Where information like shopname, category, item. cost etc. can be fetched from their respective 'ocr_.txt' files. Or you can find all the information in a single file named 'ocr_full.txt'</br>

## Solution
```shell
script() {
#!/usr/bin/bash

# getting all the names and storing in an array
NAMES=($(cat ocr_names.txt |
  uniq |
  grep -v '\[' |
  egrep -o '[[:alpha:]]+$'))

NAMES[9]=Rajesh # manual correction of data
NAMES[22]=Julia # manual correction of data

# getting all the shop names and storing in an array
readarray -t SHOPS < <(cat ocr_shopname.txt |
  uniq |
  grep -v '\[')

FILEPAT='^\[' # to capture the metadata:card number
count=0 # card count to keep track of card number
while read line; do

  # the metadata about the card name is bounded by [ ]
  if [[ $line =~ $FILEPAT ]]; then
    ((count++))
    cardNo=$(echo $line | egrep -o '[[:digit:]]+')
    cardNo=${cardNo#*0}
    # replace with the count if cardNo read is not valid
    [[ $cardNo == "" ]] && cardNo=$count 
    SHOP=${SHOPS[$((cardNo - 1))]} # current shop name
    NAME=${NAMES[$((cardNo - 1))]} # current customer name
    {
      echo "$SHOP:$NAME:$cardNo"
      echo "Item:Category:Qty:Price:Cost"
    } > shopping_bill_$cardNo.txt
  else
    it=($line) # convert the string `line` to array `it`

    # check for the enough fields and prevention of unwanted data
    echo $line | egrep -q "$SHOP|$NAME"
    if [[ $? != 0 ]] && [[ ${#it[@]} -ge 5 ]]; then
      # get the field values
      cost=${it[$((${#it[@]} - 1))]}
      price=${it[$((${#it[@]} - 2))]}
      quantity=${it[$((${#it[@]} - 3))]}
      category=${it[$((${#it[@]} - 4))]}
      item=${line% $category*}

      # correction done by observing the data from the data set
      # 3 is read as 'a' in some field
      echo $quantity | egrep -q '^[[:digit:].]+$'
      [[ $? != 0 ]] && quantity=${quantity/a/3}
      echo $price | egrep -q '^[[:digit:].]+$'
      [[ $? != 0 ]] && price=${price/a/3}

      # printing the field value in the desired structure
      echo $item:$category:$quantity:$price:$cost >> shopping_bill_$cardNo.txt
    fi
  fi
done < <(cat ocr_item_record.txt |
  uniq |
  grep '^[A-Z\[]' |
  grep -v '^Item' |
  sed 's/[=]//g') # preprocessing the data files

# manual validation with checking the total cost with the original dataset
#for file in shopping_bill_*.txt; do
#  echo $file:$(cat $file |
#    sed -n '1,2! p' |
#    rev |
#    cut -d: -f1 |
#    rev |
#    awk '{sum+=$0}END{print sum}')
#done
}
```
