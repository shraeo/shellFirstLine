#!/bin/bash

# 6.1

cd ~/Documents

awk -F',' 'NR>1 {print $1": " ($7 + $8 + $9)/3}' scores.csv

xsv table scores.csv

head scores.csv

# 6.2

wget https://archive.ics.uci.edu/ml/machine-learning-databases/autos/imports-85.data

cat <(echo 'symboling,normalized-losses,make,fuel-type,aspiration,'\
  'num-of-doors,body-style,drive-wheels,engine-location,wheel-base,length,width,'\
  'height,curb-weight,engine-type,num-of-cylinders,engine-size,fuel-system,'\
  'bore,stroke,compression-ratio,horsepower,peak-rpm,city-mpg,highway-mpg,price') \
  imports-85.data > smallset.csv

wget https://archive.ics.uci.edu/ml/machine-learning-databases/adult/adult.data

sed 's/, /,/g' adult.data > adult.csv

cat <(echo 'age,workclass,fnlwgt,education,education-num,'\
  'marital-status,occupation,relationship,race,sex,capital-gain,'\
  'capital-loss,hours-per-week,native-country,income') adult.csv > bigset.csv

# 6.3

xsv count smallset.csv

xsv headers smallset.csv

xsv stats -s make smallset.csv|xsv table

xsv stats smallset.csv | xsv table

vd smallset.csv

# 6.4

shuf -n 10 bigset.csv | xsv table | less -S

shuf -n 10 bigset.csv | sort -t, -k4 | xsv table | less -S

shuf -n 10 bigset.csv | sort -t, -n -k1 | xsv table | less -S

xsv sample 10 bigset.csv | xsv table | less -S

xsv sample 10 bigset.csv | xsv sort -s4 | xsv table | less -S

xsv sample 10 bigset.csv | xsv sort -N -s1 | xsv table | less -S

xsv sample 10 bigset.csv | xsv sort -s5,1 | xsv table | less -S

# 6.5

xsv headers smallset.csv

awk -F, '$3 == "audi" {print $3 "," $6 "," $11 "," $26}' smallset.csv | xsv table

xsv search -s 3 audi smallset.csv | xsv select 3,6,11,26 | xsv table

awk -F, '$3 ~ /^p/ {print $3 "," $6 "," $11 "," $26}' smallset.csv | xsv table

awk -F, '$11 > 190 && $26 > 30000 {print $3 "," $11 "," $26}' smallset.csv | xsv table

awk -F, '$11 > 190 && $26 > 30000 && !($3 == "bmw") {print $3 "," $11 "," $26}' smallset.csv | xsv table

awk -F, '$22 > 200 {print $3 "," $22}' smallset.csv | xsv table

awk -F, '$22 + 0 > 200 {print $3 "," $22}' smallset.csv | xsv table

# 6.6

awk -F',' '{print ($7 + $8 + $9)/3}' scores.csv

awk -F',' 'NR>1 {print $3 ": "  ($7 + $8 + $9)/3}' scores.csv

awk -F',' 'NR>1 {sum = sum + $11} END{print sum/(NR-1)}' smallset.csv

awk -F',' 'NR>1 {min = min < $11 ? min : $11} END {print min}' smallset.csv 

awk -F',' 'BEGIN{min=999} NR>1{min = min < $11 ? min : $11} END{print min}' smallset.csv

awk -F',' 'NR>1 {max_mpg[$3] = max_mpg[$3] > $26 ? max_mpg[$3] : $26} 
  END {for (i in max_mpg) print i "," max_mpg[i]}' cars.csv

awk -F',' 'NR>1 {max_mpg[$3] = max_mpg[$3] > $26 ? max_mpg[$3] : $26}
  END {for (i in max_mpg) print i "," max_mpg[i]}' cars.csv |\
  sort -t, -n -k2 | xsv table

