#Create an R file and name it
#Copy the vcf-compare output to your R file
#You will use the data starting with the first VN
#Set your working directory
setwd("~/Bioinformatics/Step 5")
#Install VennDiagram with install.packages("VennDiagram") and load the VennDiagram package with library(VennDiagram)
install.packages("VennDiagram")
library (VennDiagram)
#For help, look at the help file for ?draw.triple.venn
#Input the calculated values into the following command and send to R
venn.plot<-draw.triple.venn(area1=4823.02, area2=5436.88, area3=5061.7, n12=1846.75, n23= 1966.09, n13=1659.16, n123= 1094.4)
#Now issue the command below
grid.newpage()
grid.draw(venn.plot)
#To add subcategory titles
venn.color<-venn.plot<-draw.triple.venn(area1=4823.02, area2=5436.88, area3=5061.7, n12=1846.75, n23= 1966.09, n13=1659.16, n123= 1094.4, 
                                        category=c("0-6", "6-12", "12-18"), fill=c("darkgoldenrod1", "darkorchid", "darkseagreen1"))

#Save the venn diagram to as a pdf
pdf("TopRep venn diagram", height=10, width=10)
grid.newpage
grid.draw(venn.color)
dev.off()
