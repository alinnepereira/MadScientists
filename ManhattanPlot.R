#### Discribes the code to make one Manhattan plot for the change in Rep1Gen6 and Rep1Gen12
## Read in the .csv file containing the data from the Documents folder
freq <- read.csv("~/Documents/freq.csv")

## Install the qqman package
install.packages("qqman")
library("qqman", lib.loc="/Library/Frameworks/R.framework/Versions/3.2/Resources/library")

## Create the labels for the Manhattan plots
labels=c("I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX", "X", "XI", "XII", "XIII", "XIV", "XV", "XVI", "M")

## Create the Manhattan plot using the columns from freq.csv 
manhattan(freq, chr="CHROM", bp="POS", p="rep1", ylim=c(0,1), ylab="Frequency", xlab="Chromosome", main="Change in Frequency (Rep1Gen6 to Rep1Gen12)", chrlabs = labels, logp = FALSE)

## Add the threshold line to the Manhattan plot
abline( h = abs(mean(freq$rep1) + (4*sd(freq$rep1))))

#### Discribes the code to subset the SNPs for Rep1 and export the file of those SNPs
## Create a subset of the SNPs that are above the threshold
rep1_SNPs <- subset(freq, freq$rep1>abs(mean(freq$rep3) + (4*sd(freq$rep3))))

## Create a .csv file of the subsetted data to use for the venn diagrams
write.csv(rep1_SNPs, "rep1_SNPs.txt")
