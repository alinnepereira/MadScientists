# MadScientists
====
##Goals
Our group was tasked with investigating the change in allel freqneucy between Generation6 and Geneation12 of each replicate population,and to investigate across all generations if the change in allele frequency was random within the genome or specific to location within the genome. 

##The Process
To begine the investigation of change in SNPs between Generation6 and Generation12, all the replication population Generation6 and Generation12 vcf files were [extracted](https://github.com/AUIntroBioinformatics/MadScientists/blob/master/Extract_my_sample.sh) from the master vcf file. After extracting the individual vcf files, we generated vcf files only with [ONLY SNPs](https://github.com/AUIntroBioinformatics/MadScientists/blob/master/Keep_SNPs.sh) within them. The [allelic freqeuncy](https://github.com/AUIntroBioinformatics/MadScientists/blob/master/AlleleFrequency.sh) was obtained for all the replication population Generation6 and Generation12. TTo investigate the regions with the greatest change in SNPs frequency between Generation6 to Generation12, these files would have been uploaded to R to generate a [Manhattan-like plot](), however, these files were not in the correct format, so Dr. Stevenson provided us with the correct format a csv file. Five [Manhattan-like plots]() were produced for this time point for the five populations with a cutoff value of mean plus four standard deviation. As a group, we were supposed to share vcf files containing [ONLY INDELs](https://github.com/AUIntroBioinformatics/MadScientists/blob/master/Keep_indels.sh) with "Snape on a Plane", however, the master vcf file did not cotain INDELs.

To investigate if the change in allele frequency was random within the genome or concentrated to specific sites in the genome, we constructed [Venn Diagrams]().  To construct these [Venn Diagrams], we had to cordinate with Snapes on a plane, change in SNPs between Founder to Generation1 and The ladies, change in SNPs between Generation12 and Generation18. These groups had to provide us with SNPS that were above our specifed cutoff value. The files they provided us contained the location on the chromosome the SNP occured. The regions with the greatest change in allele frequency were compared across all time points (Founder to Generation6, Generation6 to Generation12, and Generation12 to Generation18) which was displayed as a Venn diagram in R for each replicate population.
