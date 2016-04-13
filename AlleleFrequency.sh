#! /bin/sh

#This script calculates the allele frequency at each position for the VCF file. 

#The command below loads vcftools program package (Version 0.1.12a) on the ASC.
source /opt/asn/etc/asn-bash-profiles/modules.sh
module load vcftools/0.1.12a
# place VCFtools commands after this line
#This code will output a file that ends in .frq
#vcftools –vcf <input_file.vcf> --freq –out <output_file>

vcftools --vcf Rep1Gen6SNPs.recode.vcf --freq --out Rep1Gen6SNPs
vcftools --vcf Rep2Gen6SNPs.recode.vcf --freq --out Rep2Gen6SNPs
vcftools --vcf Rep3Gen6SNPs.recode.vcf --freq --out Rep3Gen6SNPs
vcftools --vcf Rep5Gen6SNPs.recode.vcf --freq --out Rep5Gen6SNPs
vcftools --vcf Rep7Gen6SNPs.recode.vcf --freq --out Rep7Gen6SNPs
vcftools --vcf Rep1Gen12SNPs.recode.vcf --freq --out Rep1Gen12SNPs
vcftools --vcf Rep2Gen12SNPs.recode.vcf --freq --out Rep2Gen12SNPs
vcftools --vcf Rep3Gen12SNPs.recode.vcf --freq --out Rep3Gen12SNPs
vcftools --vcf Rep5Gen12SNPs.recode.vcf --freq --out Rep5Gen12SNPs
vcftools --vcf Rep7Gen12SNPs.recode.vcf --freq --out Rep7Gen12SNPs
