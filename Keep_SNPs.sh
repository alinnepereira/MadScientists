#! /bin/sh

#Dr. Stevison provided a master VCF file of all of the replicates at the four different time points
#This VCF file did not contain indels
#However below describes how you would remove the indels from your VCF files that you extracted with the VCF #sample ID.

#The followoing code was found online to remove indels.
#vcftools --vcf input_file.vcf --remove-indels --recode --recode-INFO-all --out SNPs_only

#The command below loads vcftools program package (Version 0.1.12a) on the ASC.
source /opt/asn/etc/asn-bash-profiles/modules.sh
module load vcftools/0.1.12a
#Place VCFtools commands after this line.

vcftools --gzvcf Rep1Gen6.recode.vcf.gz --remove-indels --recode --recode-INFO-all --out Rep1Gen6SNPs
vcftools --gzvcf Rep2Gen6.recode.vcf.gz --remove-indels --recode --recode-INFO-all --out Rep2Gen6SNPs    
vcftools --gzvcf Rep3Gen6.recode.vcf.gz --remove-indels --recode --recode-INFO-all --out Rep3Gen6SNPs    
vcftools --gzvcf Rep5Gen6.recode.vcf.gz --remove-indels --recode --recode-INFO-all --out Rep5Gen6SNPs    
vcftools --gzvcf Rep7Gen6.recode.vcf.gz --remove-indels --recode --recode-INFO-all --out Rep7Gen6SNPs 
vcftools --gzvcf Rep1Gen12.recode.vcf.gz --remove-indels --recode --recode-INFO-all --out Rep1Gen12SNPs
vcftools --gzvcf Rep2Gen12.recode.vcf.gz --remove-indels --recode --recode-INFO-all --out Rep2Gen12SNPs    
vcftools --gzvcf Rep3Gen12.recode.vcf.gz --remove-indels --recode --recode-INFO-all --out Rep3Gen12SNPs    
vcftools --gzvcf Rep5Gen12.recode.vcf.gz --remove-indels --recode --recode-INFO-all --out Rep5Gen12SNPs    
vcftools --gzvcf Rep7Gen12.recode.vcf.gz --remove-indels --recode --recode-INFO-all --out Rep7Gen12SNPs    
