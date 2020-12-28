#! /bin/bash
#defining the values for the while loop
x=0
y=43
#defining the Array for saving the runtime results of part1
python_kmeans_arr_1=()
python_linearRegression_arr_1=()
r_kmeans_arr_1=()
r_linearRegression_arr_1=()
#defining the Array for saving the runtime results of part2
python_kmeans_arr_2=()
python_linearRegression_arr_2=()
r_kmeans_arr_2=()
r_linearRegression_arr_2=()
#defining the Array for saving the runtime results of part3
python_kmeans_arr_3=()
python_linearReg_arr_3=()
r_kmeans_arr_3=()
r_linearRegression_arr_3=()
#defining the Array for saving the runtime results of part3
python_kmeans_arr_4=()
python_linearRegression_arr_4=()
r_kmeans_arr_4=()
r_linearRegression_arr_4=()

#while loop for measuringe the runtime metric 43 times and storing it into the arrays
while  [ $x -lt $y ]
do

#emptying the cache and measuring the runtime for part 1 of the python kmeans alghorithm and storing it into the array
sync; echo 3 > /proc/sys/vm/drop_caches
python_kmeans_arr_1+=($(TIMEFORMAT='%R'; { time python3 kmeans_covid_1.py; } 2>&1))

#emptying the cache and measuring the runtime for part 2 of the python kmeans alghorithm and storing it into the array
sync; echo 3 > /proc/sys/vm/drop_caches
python_kmeans_arr_2+=($(TIMEFORMAT='%R'; { time python3 kmeans_covid_2.py; } 2>&1))

#emptying the cache and measuring the runtime for part 3 of the python kmeans alghorithm and storing it into the array
sync; echo 3 > /proc/sys/vm/drop_caches
python_kmeans_arr_3+=($(TIMEFORMAT='%R'; { time python3 kmeans_covid_3.py; } 2>&1))

#emptying the cache and measuring the runtime for part 4 of the python kmeans alghorithm and storing it into the array
sync; echo 3 > /proc/sys/vm/drop_caches
python_kmeans_arr_4+=($(TIMEFORMAT='%R'; { time python3 kmeans_covid_4.py; } 2>&1))
#deleting the plot the next iteration
rm Pplots.png

#----------------------------------------------------------------------------------------------
#emptying the cache and measuring the runtime for part 1 of the python regression analysis and storing it into the array
sync; echo 3 > /proc/sys/vm/drop_caches
python_linearRegression_arr_1+=($(TIMEFORMAT='%R'; { time python3 linearRegression_covid_1.py; } 2>&1))

#emptying the cache and measuring the runtime for part 2 of the python regression analysis and storing it into the array
sync; echo 3 > /proc/sys/vm/drop_caches
python_linearRegression_arr_2+=($(TIMEFORMAT='%R'; { time python3 linearRegression_covid_2.py; } 2>&1))

#emptying the cache and measuring the runtime for part 3 of the python regression analysis and storing it into the array
sync; echo 3 > /proc/sys/vm/drop_caches
python_linearRegression_arr_3+=($(TIMEFORMAT='%R'; { time python3 linearRegression_covid_3.py; } 2>&1))

#emptying the cache and measuring the runtime for part 4 of the python regression analysis and storing it into the array
sync; echo 3 > /proc/sys/vm/drop_caches
python_linearRegression_arr_4+=($(TIMEFORMAT='%R'; { time python3 linearRegression_covid_4.py; } 2>&1))
#deleting the plot the next iteration
rm Pplots.png

#----------------------------------------------------------------------------------------------
#emptying the cache and measuring the runtime for part 1 of the r kmeans alghorithm and storing it into the arrayay
sync; echo 3 > /proc/sys/vm/drop_caches
r_kmeans_arr_1+=($(TIMEFORMAT='%R'; { time Rscript kmeans_covid_1.R; } 2>&1))

#emptying the cache and measuring the runtime for part 2 of the r kmeans alghorithm and storing it into the array
sync; echo 3 > /proc/sys/vm/drop_caches
r_kmeans_arr_2+=($(TIMEFORMAT='%R'; { time Rscript kmeans_covid_2.R; } 2>&1))

#emptying the cache and measuring the runtime for part 3 of the r kmeans alghorithm and storing it into the array
sync; echo 3 > /proc/sys/vm/drop_caches
r_kmeans_arr_3+=($(TIMEFORMAT='%R'; { time Rscript kmeans_covid_3.R; } 2>&1))

#emptying the cache and measuring the runtime for part 4 of the r kmeans alghorithm and storing it into the array
sync; echo 3 > /proc/sys/vm/drop_caches
r_kmeans_arr_4+=($(TIMEFORMAT='%R'; { time Rscript kmeans_covid_4.R; } 2>&1))
#deleting the plot the next iteration
rm Rplots.png

#---------------------------------------------------------------------------------------------
#emptying the cache and measuring the runtime for part 1 of the r regression analysis and storing it into the array
sync; echo 3 > /proc/sys/vm/drop_caches
r_linearRegression_arr_1+=($(TIMEFORMAT='%R'; { time Rscript linearRegression_covid_1.R; } 2>&1))

#emptying the cache and measuring the runtime for part 1 of the r regression analysis and storing it into the array
sync; echo 3 > /proc/sys/vm/drop_caches
r_linearRegression_arr_2+=($(TIMEFORMAT='%R'; { time Rscript linearRegression_covid_2.R; } 2>&1))

#emptying the cache and measuring the runtime for part 1 of the r regression analysis and storing it into the array
sync; echo 3 > /proc/sys/vm/drop_caches
r_linearRegression_arr_3+=($(TIMEFORMAT='%R'; { time Rscript linearRegression_covid_3.R; } 2>&1))

#emptying the cache and measuring the runtime for part 1 of the r regression analysis and storing it into the array
sync; echo 3 > /proc/sys/vm/drop_caches
r_linearRegression_arr_4+=($(TIMEFORMAT='%R'; { time Rscript linearRegression_covid_4.R; } 2>&1))
#deleting the plot the next iterationion
rm Rplots.png

 ((x++))

done

#printing the values of part 1 into a textfile
echo "python_kmeans ${python_kmeans_arr_1[@]}" >> part1.txt
echo "python_linearReg ${python_linearRegression_arr_1[@]}" > part1.txt
echo "r_kmeans ${r_kmeans_arr_1[@]}" >> part1.txt
echo "r_linearReg ${r_linearRegression_arr_1[@]}" >> part1.txt

#printing the values of part 2 into a textfile
echo "python_kmeans ${python_kmeans_arr_2[@]}" >> part2.txt
echo "python_linearReg ${python_linearRegression_arr_2[@]}" > part2.txt
echo "r_kmeans ${r_kmeans_arr_2[@]}" >> part2.txt
echo "r_linearReg ${r_linearRegression_arr_2[@]}" >> part2.txt

#printing the values of part 3 into a textfile
echo "python_kmeans ${python_kmeans_arr_3[@]}" >> part3.txt
echo "python_linearReg ${python_linearRegression_arr_3[@]}" > part3.txt
echo "r_kmeans ${r_kmeans_arr_3[@]}" >> part3.txt
echo "r_linearReg ${r_linearRegression_arr_3[@]}" >> part3.txt

#printing the values of part 4 into a textfile
echo "python_kmeans ${python_kmeans_arr_4[@]}" >> part4.txt
echo "python_linearReg ${python_linearRegression_arr_4[@]}" > part4.txt
echo "r_kmeans ${r_kmeans_arr_4[@]}" >> part4.txt
echo "r_linearReg ${r_linearRegression_arr_4[@]}" >> part4.txt