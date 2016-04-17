#Create an R file and name it
#Copy the vcf-compare output to your R file
#You will use the data starting with the first VN
#Set your working directory
setwd("~/Bioinformatics/Step 5/Rep2")
#Install VennDiagram with install.packages("VennDiagram") and load the VennDiagram package with library(VennDiagram)
install.packages("VennDiagram")
library (VennDiagram)
#For help, look at the help file for ?draw.triple.venn
#Input the calculated values into the following command and send to R
venn.plot<-draw.triple.venn(area1=495.22, area2=663.90, area3=491.06, n12=225.95, n23= 223.87, n13=139.53, n123= 117.87)
#Now issue the command below
grid.newpage()
grid.draw(venn.plot)
#To add subcategory titles
venn.color<-venn.plot<-draw.triple.venn(area1=495.22, area2=663.90, area3=491.06, n12=225.95, n23= 223.87, n13=139.53, n123= 117.87, 
                                        category=c("0-6", "6-12", "12-18"), fill=c("chartreuse3", "khaki", "lightpink2"))

#Save the venn diagram to as a pdf
pdf("Rep2 venn diagram", height=10, width=10)
grid.newpage
grid.draw(venn.color)
dev.off()
