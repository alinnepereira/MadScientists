#Create an R file and name it
#Copy the vcf-compare output to your R file
#You will use the data starting with the first VN
#Set your working directory
setwd("~/Bioinformatics/Step 5/Rep3")
#Install VennDiagram with install.packages("VennDiagram") and load the VennDiagram package with library(VennDiagram)
install.packages("VennDiagram")
library (VennDiagram)
#For help, look at the help file for ?draw.triple.venn
#Input the calculated values into the following command and send to R
venn.plot<-draw.triple.venn(area1=983.82, area2=1014.40, area3=1033.20, n12=349.52, n23= 374.21, n13=358.92, n123= 216.53)
#Now issue the command below
grid.newpage()
grid.draw(venn.plot)
#To add subcategory titles
venn.color<-venn.plot<-draw.triple.venn(area1=983.82, area2=1014.40, area3=1033.20, n12=349.52, n23= 374.21, n13=358.92, n123= 216.53, 
                                        category=c("0-6", "6-12", "12-18"), fill=c("lightseagreen", "gold", "darkmagenta"))

#Save the venn diagram to as a pdf
pdf("Rep2 venn diagram", height=10, width=10)
grid.newpage
grid.draw(venn.color)
dev.off()
