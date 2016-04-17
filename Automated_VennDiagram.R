#source this file#


Venn_from_vcfcompare <- function(input_file="VennDiagram_Raw.txt", weighted="TRUE", setNames=c("6", "12", "18"), label="weight"){
  
#############################################################
################General Use Comments#########################
#############################################################
  
  #input_file="foo.txt" is the vcf-compare output
  #weighted="TRUE" gives area proportional Venn 
  #weighted="FALSE" gives non-area proportional Venn
  #setNames are names of sets in the order supplied to 
  #vcf-compare
    #check and MAKE SURE these labels plot with the correct set
    #supply as character vector
  #label="weight" displays the weights
  #label="none" does not display the weights
#############################################################
#############################################################
#############################################################
  
############################################################  
############check and install packages that are required####
############################################################

  pack <- row.names(installed.packages())
  
  is.stringr.there <- sum(pack=="stringr")
  if(is.stringr.there==0){install.packages("stringr")}
  
  
  is.Vennerable.there <- sum(pack=="Vennerable")
  if(is.Vennerable.there==0){
    
    source("http://bioconductor.org/biocLite.R")
    biocLite(c("RBGL","graph"))
    install.packages("devtools")
    library(devtools)
    install_github("js229/Vennerable") 
    library(Vennerable)
  
  }
#############################################################
#############################################################
#############################################################
  
require("stringr")
require("Vennerable")


#read vcf-compare output text file
vcf <- readLines(input_file)

#get Venn diagram #s
vcf.out <- vcf[grep("^VN", vcf)]

out <- vector(length=length(vcf.out))
for(i in 1:length(vcf.out)){
int <- gsub("\\([0-9]{1,2}.[0-9]%)", "", vcf.out[i])

 int.2 <- gsub("[ ]{2,}", ",", int)

 out[i] <- gsub(" ", "", int.2)

}

#find the number of columns from the data
num_columns <- max(unlist(lapply(out, function(x)str_count(x, ","))))+1

#make vcf.out a dataframe
DF <- read.csv(textConnection(out), fill = TRUE, header=FALSE, col.names = paste0("V",seq_len(num_columns)), na.strings="")  

##** need(?) closeAllConnections()
closeAllConnections()

clean_DF <- DF

######################################################

##############################################
###find files in vcf-compare output###########
##############################################

#find files that were compared
#in order to find Venn Diagram positions
command_line <- vcf[grep("command line", vcf)]

#vector to parse command
command_line_parse <- as.vector(unlist((strsplit(unlist(command_line), split=" "))))

#grep for "vcf"
contain_vcf <- command_line_parse[grep("vcf", command_line_parse)]

#remove vcf-compare from output
vcf_files <- contain_vcf[-grep("vcf-compare", contain_vcf)]

###############################################
###############################################
###############################################

#Compare 3 files
if(length(vcf_files)==3){

###############################################
####use parsed file list to set up Venn Diagram#########
###############################################
#find first file in columns
area1 <- clean_DF[clean_DF[,3]%in%vcf_files[1] & is.na(clean_DF[,4]),"V2"]

area2 <- clean_DF[clean_DF[,3]%in%vcf_files[2] & is.na(clean_DF[,4]),"V2"]

area3 <- clean_DF[clean_DF[,3]%in%vcf_files[3] & is.na(clean_DF[,4]),"V2"]

n12 <- clean_DF[clean_DF[,3]%in%vcf_files[1] & clean_DF[,4]%in%vcf_files[2] & is.na(clean_DF[,5]),"V2"]

n13 <- clean_DF[clean_DF[,3]%in%vcf_files[1] & clean_DF[,4]%in%vcf_files[3] & is.na(clean_DF[,5]),"V2"]

n23 <- clean_DF[clean_DF[,3]%in%vcf_files[2] & clean_DF[,4]%in%vcf_files[3] & is.na(clean_DF[,5]),"V2"]

n123 <- clean_DF[clean_DF[,3]%in%vcf_files[1] & clean_DF[,4]%in%vcf_files[2] & clean_DF[,5]%in%vcf_files[3],"V2"]


}else{print("case not covered")}

###############################################
###############################################
###############################################

#######################################
###Draw Venn Diagram with Venerables###
#######################################

if(weighted=="FALSE"){
Vcombo <- Venn(SetNames = setNames, Weight = c(0,area1, area2, area3, n12, n23, n13, n123))

plot(Vcombo, doWeights=FALSE, show=list(FaceText=label))
}

if(weighted=="TRUE"){
Vcombo <- Venn(SetNames = setNames, Weight = c(0,area1, area2, area3, n12, n23, n13, n123))

plot(Vcombo, doWeights=TRUE, show=list(FaceText=label))
}
#######################################
#######################################
#######################################
}

Venn_from_vcfcompare()