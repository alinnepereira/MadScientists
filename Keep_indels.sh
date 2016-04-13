#! /bin/sh

#Dr. Stevison provided a master VCF file of all of the replicates at the four different time points
#This VCF file did not contain indels
#However below describes how you would extract the indels from your VCF files that you extracted with the VCF #sample ID.
#This code will keep the indels which were initially supposed to be sent to our collaborators (Snapes on a Plane).

#The command below loads vcftools program package (Version 0.1.12a) on the ASC.
source /opt/asn/etc/asn-bash-profiles/modules.sh
module load vcftools/0.1.12a
# place VCFtools commands after this line



#I found this code online to keep the indels only
#These files will be given to our collaborators
#vcftools --vcf input_file.vcf --keep-only-indels --recode --recode-INFO-all --out SNPs_only

vcftools --gzvcf Rep1Gen6.recode.vcf.gz --keep-only-indels --recode --recode-INFO-all --out Rep1Gen6Indels
vcftools --gzvcf Rep2Gen6.recode.vcf.gz --keep-only-indels --recode --recode-INFO-all --out Rep2Gen6Indels
vcftools --gzvcf Rep3Gen6.recode.vcf.gz --keep-only-indels --recode --recode-INFO-all --out Rep3Gen6Indels
vcftools --gzvcf Rep5Gen6.recode.vcf.gz --keep-only-indels --recode --recode-INFO-all --out Rep5Gen6Indels
vcftools --gzvcf Rep7Gen6.recode.vcf.gz --keep-only-indels --recode --recode-INFO-all --out Rep7Gen6Indels
vcftools --gzvcf Rep1Gen12.recode.vcf.gz --keep-only-indels --recode --recode-INFO-all --out Rep1Gen12Indels
vcftools --gzvcf Rep2Gen12.recode.vcf.gz --keep-only-indels --recode --recode-INFO-all --out Rep2Gen12Indels
vcftools --gzvcf Rep3Gen12.recode.vcf.gz --keep-only-indels --recode --recode-INFO-all --out Rep3Gen12Indels
vcftools --gzvcf Rep5Gen12.recode.vcf.gz --keep-only-indels --recode --recode-INFO-all --out Rep5Gen12Indels
vcftools --gzvcf Rep7Gen12.recode.vcf.gz --keep-only-indels --recode --recode-INFO-all --out Rep7Gen12Indels

