#defining the values for the while loop
[int]$x=0
[int]$y=43
#defining the Array for saving the runtime results of part1
$python_kmeans_1=@()
$python_linearReg_1=@()
$r_kmeans_1=@()
$r_linearReg_1=@()
$runtime_1=@()
#defining the Array for saving the runtime results of part2
$python_kmeans_2=@()
$python_linearReg_2=@()
$r_kmeans_2=@()
$r_linearReg_2=@()
$runtime_2=@()
#defining the Array for saving the runtime results of part3
$python_kmeans_3=@()
$python_linearReg_3=@()
$r_kmeans_3=@()
$r_linearReg_3=@()
$runtime_3=@()
#defining the Array for saving the runtime results of part4
$python_kmeans_4=@()
$python_linearReg_4=@()
$r_kmeans_4=@()
$r_linearReg_4=@()
$runtime_4=@()

#while loop for measuringe the runtime metric 43 times and storing it into the arrays
while ( $x -ne $y)
{
#emptying the cache and measuring the runtime for part 1 of the python kmeans alghorithm and storing it into the array
Clear-BCCache -Force
$part1 = Measure-Command {C:\Users\User\AppData\Local\Programs\Python\Python38\python.exe $pwd\kmeans_covid_1.py}
$python_kmeans_1+=,($part1.Milliseconds / 1000)

#emptying the cache and measuring the runtime for part 2 of the python kmeans alghorithm and storing it into the array
Clear-BCCache -Force
$part2 = Measure-Command {C:\Users\User\AppData\Local\Programs\Python\Python38\python.exe $pwd\kmeans_covid_2.py}
$python_kmeans_2+=,($part2.Milliseconds / 1000)

#emptying the cache and measuring the runtime for part 3 of the python kmeans alghorithm and storing it into the array
Clear-BCCache -Force
$part3 = Measure-Command {C:\Users\User\AppData\Local\Programs\Python\Python38\python.exe $pwd\kmeans_covid_3.py}
$python_kmeans_3+=,($part3.Milliseconds / 1000)

#emptying the cache and measuring the runtime for part 4 of the python kmeans alghorithm and storing it into the array
Clear-BCCache -Force
$part4 = Measure-Command {C:\Users\User\AppData\Local\Programs\Python\Python38\python.exe $pwd\kmeans_covid_4.py}
$python_kmeans_4+=,($part4.Milliseconds / 1000)
#deleting the plot the next iteration
rm $pwd\Pplots.png

#---------------------------------------------------------------------------------------------------
#emptying the cache and measuring the runtime for part 1 of the python regression analysis and storing it into the array
Clear-BCCache -Force
$part1 = Measure-Command {C:\Users\User\AppData\Local\Programs\Python\Python38\python.exe $pwd\linearRegression_covid_1.py}
$python_linearReg_1+=,($part1.Milliseconds / 1000)

#emptying the cache and measuring the runtime for part 2 of the python regression analysis and storing it into the array
Clear-BCCache -Force
$part2 = Measure-Command {C:\Users\User\AppData\Local\Programs\Python\Python38\python.exe $pwd\linearRegression_covid_2.py}
$python_linearReg_2+=,($part2.Milliseconds / 1000)

#emptying the cache and measuring the runtime for part 3 of the python regression analysis and storing it into the array
Clear-BCCache -Force
$part3 = Measure-Command {C:\Users\User\AppData\Local\Programs\Python\Python38\python.exe $pwd\linearRegression_covid_3.py}
$python_linearReg_3+=,($part3.Milliseconds / 1000)

#emptying the cache and measuring the runtime for part 4 of the python regression analysis and storing it into the array
Clear-BCCache -Force
$part4 = Measure-Command {C:\Users\User\AppData\Local\Programs\Python\Python38\python.exe $pwd\linearRegression_covid_4.py}
$python_linearReg_4+=,($part4.Milliseconds / 1000)
#deleting the plot the next iteration
rm $pwd\Pplots.png

#----------------------------------------------------------------------------------------------------
#emptying the cache and measuring the runtime for part 1 of the r kmeans alghorithm and storing it into the arrayay
Clear-BCCache -Force
$part1 = Measure-Command {C:\Users\User\AppData\Local\Programs\R-3.6.3\bin\x64\Rscript.exe $pwd\kmeans_covid_1.R}
$r_kmeans_1+=,($part1.Milliseconds / 1000)

#emptying the cache and measuring the runtime for part 2 of the r kmeans alghorithm and storing it into the arrayay
Clear-BCCache -Force
$part2 = Measure-Command {C:\Users\User\AppData\Local\Programs\R-3.6.3\bin\x64\Rscript.exe $pwd\kmeans_covid_2.R}
$r_kmeans_2+=,($part2.Milliseconds / 1000)

#emptying the cache and measuring the runtime for part 3 of the r kmeans alghorithm and storing it into the arrayay
Clear-BCCache -Force
$part3 = Measure-Command {C:\Users\User\AppData\Local\Programs\R-3.6.3\bin\x64\Rscript.exe $pwd\kmeans_covid_3.R}
$r_kmeans_3+=,($part3.Milliseconds / 1000)

#emptying the cache and measuring the runtime for part 4 of the r kmeans alghorithm and storing it into the arrayay
Clear-BCCache -Force
$part4 = Measure-Command {C:\Users\User\AppData\Local\Programs\R-3.6.3\bin\x64\Rscript.exe $pwd\kmeans_covid_4.R}
$r_kmeans_4+=,($part4.Milliseconds / 1000)
#deleting the plot the next iteration
rm $pwd\Rplots.png

#----------------------------------------------------------------------------------------------------
#emptying the cache and measuring the runtime for part 1 of the r regression analysis and storing it into the array
Clear-BCCache -Force
$part1 = Measure-Command {C:\Users\User\AppData\Local\Programs\R-3.6.3\bin\x64\Rscript.exe $pwd\linearRegression_covid_1.R}
$r_linearReg_1+=,($part1.Milliseconds / 1000)

#emptying the cache and measuring the runtime for part 2 of the r regression analysis and storing it into the array
Clear-BCCache -Force
$part2 = Measure-Command {C:\Users\User\AppData\Local\Programs\R-3.6.3\bin\x64\Rscript.exe $pwd\linearRegression_covid_2.R}
$r_linearReg_2+=,($part2.Milliseconds / 1000)
#emptying the cache and measuring the runtime for part 3 of the r regression analysis and storing it into the array
Clear-BCCache -Force
$part3 = Measure-Command {C:\Users\User\AppData\Local\Programs\R-3.6.3\bin\x64\Rscript.exe $pwd\linearRegression_covid_3.R}
$r_linearReg_3+=,($part3.Milliseconds / 1000)

#emptying the cache and measuring the runtime for part 4 of the r regression analysis and storing it into the array
Clear-BCCache -Force
$part4 = Measure-Command {C:\Users\User\AppData\Local\Programs\R-3.6.3\bin\x64\Rscript.exe $pwd\linearRegression_covid_4.R}
$r_linearReg_4+=,($part4.Milliseconds / 1000)
#deleting the plot the next iteration
rm $pwd\Rplots.png

    $x++
}
#printing the values of part 1 into a textfile
"python_kmeans",$python_kmeans_1,"python_linearReg",$python_linearReg_1,"r_kmeans",$r_kmeans_1,"r_linearReg",$r_linearReg_1 | Out-File -Append $pwd\part1.txt
#printing the values of part 2 into a textfile
"python_kmeans",$python_kmeans_2,"python_linearReg",$python_linearReg_2,"r_kmeans",$r_kmeans_2,"r_linearReg",$r_linearReg_2 | Out-File -Append $pwd\part2.txt
#printing the values of part 3 into a textfile
"python_kmeans",$python_kmeans_3,"python_linearReg",$python_linearReg_3,"r_kmeans",$r_kmeans_3,"r_linearReg",$r_linearReg_3 | Out-File -Append $pwd\part3.txt
#printing the values of part 4 into a textfile
"python_kmeans",$python_kmeans_4,"python_linearReg",$python_linearReg_4,"r_kmeans",$r_kmeans_4,"r_linearReg",$r_linearReg_4 | Out-File -Append $pwd\part4.txt