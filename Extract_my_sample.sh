#! /bin/sh

#The VCF File ID for the Rep1Gen6 strain is YEE_0112_03_02_06.
#The VCF File ID for the Rep1Gen12 strain is YEE_0112_03_02_12.
#The VCF File ID for the Rep2Gen6 strain is YEE_0112_03_03_06.
#The VCF File ID for the Rep2Gen12 strain is YEE_0112_03_03_12.
#The VCF File ID for the Rep3Gen6 strain is YEE_0112_03_05_06.
#The VCF File ID for the Rep3Gen12 strain is YEE_0112_03_05_12.
#The VCF File ID for the Rep5Gen6 strain is YEE_0112_03_07_06.
#The VCF File ID for the Rep5Gen12 strain is YEE_0112_03_07_12.
#The VCF File ID for the Rep7Gen6 strain is YEE_0112_03_10_06. 
#The VCF File ID for the Rep7Gen12 strain is YEE_0112_03_10_12. 

#The command below loads vcftools program package (Version 0.1.12a) on the ASC.
  ```source /opt/asn/etc/asn-bash-profiles/modules.sh```
  ```module load vcftools/0.1.12a```
#Place VCFtools commands after this line.

#Load Tabix so certain perl commands can be used to manipulate the VCF file.
source /opt/asn/etc/asn-bash-profiles/modules.sh
module load tabix/0.2.6
#Place Tabix commands after this line.

#Load 
echo "export PERL5LIB=/opt/asn/apps/vcftools_0.1.12a/lib/perl5/site_perl/" >> ~/.bashrc.local

#Extract Replicate population at a particular time point from combined VCF.
#Make sure to use the correct VCF File for the population and generation that you want to extract from 
#the master VCF.
#The output file will end in .recode.vcf
vcftools --gzvcf Combined.Q30.recode.vcf.gz --indv <insert VCF file ID> --recode --recode-INFO-all \
--out <outputfile>

#Generate the dept of the input file. 
#The output file will end in .idepth.
vcftools --vcf <outputfile>.recode.vcf --depth --out <outputfile>

#The code below compresses the VCF file.
#The file will then end in .gz
bgzip Rep7Gen12.recode.vcf

#After compressing the VCF file, use the command below to index the compressed VCF file.
#After -p you must specify what type of file it is inputing into the command.
#In this case, the input file is a VCF file.
#The output file will end in .tbi
tabix -p vcf Rep7Gen12.recode.vcf.gz

#The command below will generate the stats for the compressed extracted VCF file. 
#vcf-stats is a perl command and the reason that the Tabix module was loaded in the beginning of this script.
vcf-stats <outputfile>.recode.vcf.gz>stats.txt


