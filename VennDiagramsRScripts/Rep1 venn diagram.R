#Create an R file and name it
#Copy the vcf-compare output to your R file
#You will use the data starting with the first VN
#Set your working directory
setwd("~/Bioinformatics/Step 5/Rep1")
#Install VennDiagram with install.packages("VennDiagram") and load the VennDiagram package with library(VennDiagram)
install.packages("VennDiagram")
library (VennDiagram)
#For help, look at the help file for ?draw.triple.venn
#Input the calculated values into the following command and send to R
venn.plot<-draw.triple.venn(area1=334.96, area2=355.28, area3=323.22, n12=127.95, n23= 122.08, n13=111.92, n123= 72.39)
#Now issue the command below
grid.newpage()
grid.draw(venn.plot)
#To add subcategory titles
venn.color<-venn.plot<-draw.triple.venn(area1=334.96, area2=355.28, area3=323.22, n12=127.95, n23= 122.08, n13=111.92, n123= 72.39, 
                                        category=c("0-6", "6-12", "12-18"), fill=c("skyblue", "yellow", "purple"))

#Save the venn diagram to as a pdf
pdf("Rep1 venn diagram", height=10, width=10)
grid.newpage
grid.draw(venn.color)
dev.off()
