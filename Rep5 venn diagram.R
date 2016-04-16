#Create an R file and name it
#Copy the vcf-compare output to your R file
#You will use the data starting with the first VN
#Set your working directory
setwd("~/Bioinformatics/Step 5/Rep5")
#Install VennDiagram with install.packages("VennDiagram") and load the VennDiagram package with library(VennDiagram)
install.packages("VennDiagram")
library (VennDiagram)
#For help, look at the help file for ?draw.triple.venn
#Input the calculated values into the following command and send to R
venn.plot<-draw.triple.venn(area1=1543.56, area2=1650.06, area3=1727.38, n12=542.31, n23= 634.22, n13=580.97, n123= 351.5)
#Now issue the command below
grid.newpage()
grid.draw(venn.plot)
#To add subcategory titles
venn.color<-venn.plot<-draw.triple.venn(area1=1543.56, area2=1650.06, area3=1727.38, n12=542.31, n23= 634.22, n13=580.97, n123= 351.5, 
                                        category=c("0-6", "6-12", "12-18"), fill=c("midnightblue", "mistyrose2", "oldlace"))

#Save the venn diagram to as a pdf
pdf("Rep5 venn diagram", height=10, width=10)
grid.newpage
grid.draw(venn.color)
dev.off()