#CHANGE ALL COMMENTS TO GET CREDIT
#Jessica Kaufman, April 21, 2019
#Commented guide 
#Introduction to Boolean vectors

#For this assignment you want to learn to compare strings.  
#First you need to know how to
#test if something is TRUE or FALSE

#Boolean Example #1
#Make a variable L and set it equation to the equation 2+2==4
L<- 
#L is TRUE

#Boolean Example #2
#Make a variable L and set it equation to the equation 4*20!=80
L<- 
#L is FALSE


#Boolean Example #3
#Text comparisons can also produce TRUE or FALSE 
#Here are several examples with grepl()
#See if you can make the next line false, by changing the first term
grepl("cat","category")
#See if you can make the next line TRUE, by changing the second term
grepl("cow","The cat jumped over the moon.")

#Boolean Example #5 -> Logical Vector
#Use grepl to find when the genotype contains the minor allele, G
Genotype <- c('AA','AG','AA','GG','AA','AG','AA','AA','AA','GA','AA')
#test each entry
L1 <- grepl("G", Genotype[1])
L2 <- grepl("G", Genotype[2])
L3 <- #fill in expression for row 3

# Use c() command to make a boolean vector with these three values
logicalVector <- 

#You can't do this for your project.  I have shown the structure for a 100 step for 
#loop.  Change this loop so that each row is tested to see if the minor allele
#is present in the genotype.  Change length of loop to 1:11 since genotype is 11 long.
for (i in 1:100){
  logicalVector[i]<- i <50
}
print(logicalVector)

#Filter data into a new dataframe called filteredData
#Only include rows where logicalVector is true by 
#putting logicalVector in for rows and including all columns
#use subset(Genotype, logicalVector) similar to mtCars HW
filteredData<-

#Export to a new file called filteredData.csv using write.csv
write.csv()
