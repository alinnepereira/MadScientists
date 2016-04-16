#Create an R file and name it
#Copy the vcf-compare output to your R file
#You will use the data starting with the first VN
#Set your working directory
setwd("~/Bioinformatics/Step 5/Rep7")
#Install VennDiagram with install.packages("VennDiagram") and load the VennDiagram package with library(VennDiagram)
install.packages("VennDiagram")
library (VennDiagram)
#For help, look at the help file for ?draw.triple.venn
#Input the calculated values into the following command and send to R
venn.plot<-draw.triple.venn(area1=1507.46, area2=1795.24, area3=1528.84, n12=616.02, n23= 626.71, n13=482.82, n123= 345.11)
#Now issue the command below
grid.newpage()
grid.draw(venn.plot)
#To add subcategory titles
venn.color<-venn.plot<-draw.triple.venn(area1=1507.46, area2=1795.24, area3=1528.84, n12=616.02, n23= 626.71, n13=482.82, n123= 345.11, 
                                        category=c("0-6", "6-12", "12-18"), fill=c("hotpink", "cyan", "lightgreen"))

#Save the venn diagram to as a pdf
pdf("Rep7 venn diagram", height=10, width=10)
grid.newpage
grid.draw(venn.color)
dev.off()