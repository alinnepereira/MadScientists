# MadScientists
====
##Goals
Our group was tasked with investigating the change in allele frequency between Generation6 and Geneation12 of each replicate population,and to investigate across all generations if the change in allele frequency was random within the genome or specific to locations within the genome. 

##The Process
To begin the investigation of change in allele frequency between Generation6 and Generation12, all of the VCF files for Generation6 and Generation12 were [extracted](https://github.com/AUIntroBioinformatics/MadScientists/blob/master/Extract_my_sample.sh) from the master VCF file provided in the class shared folder. After extracting the individual VCF files, we generated VCF files with [ONLY SNPs](https://github.com/AUIntroBioinformatics/MadScientists/blob/master/Keep_SNPs.sh); therefore, all indels were removed. The [allelic freqeuncy](https://github.com/AUIntroBioinformatics/MadScientists/blob/master/AlleleFrequency.sh) was obtained for all of the replicate populations at Generation6 and Generation12. To investigate the regions with the greatest change in allele frequency between Generation6 to Generation12, these files would have been uploaded to R to generate a [Manhattan-like plot]();  however, these files were not in the correct format, so Dr. Stevenson provided us with the correct format, a csv file. Five [Manhattan-like plots]() were produced for this time point for the five populations with a cutoff value of mean plus four times standard deviation. As a group, we were supposed to share VCF files containing [ONLY INDELs](https://github.com/AUIntroBioinformatics/MadScientists/blob/master/Keep_indels.sh) with "Snapes on a Plane", however, the master vcf file did not cotain INDELs. We were no longer responsible for this step; furthermore, it was unnecessary to extract only SNPs from our extracted sample VCF files which we had already completed. 

To investigate if the change in allele frequency was random within the genome or concentrated to specific sites in the genome, we constructed Venn diagrams.  To construct these Venn diagrams, we coordinated with "Snapes on a Plane" to obtain the positions in the genome that had the greatest change in allele frequency between Founder to Generation1 for all replicate populations and "The Ladies" to obtain the positions in the genome that had the greatest change in allele frequency between Generation12 and Generation18. These groups provided us with SNPS that were above our specifed cutoff value and the location on the chromosome where the SNP occured. The regions with the greatest change in allele frequency were compared across all time points (Founder to Generation6, Generation6 to Generation12, and Generation12 to Generation18), which was displayed as a Venn diagram in R for each replicate population.  

Before creating the Venn diagrams, a [text file](Rep1.txt) had to be made that would be used in R to read the information used to create venn diagrams. Each time a new time point was analzyed, a new [text file](https://github.com/AUIntroBioinformatics/MadScientists.git) was created (a total of 6 text files). The text files were then copied into folders in R. A [script](Rep1 venn diagram.R) was then made and executed to generate a Venn diagram.  Each time a new time point was analyzed, a new [script](https://github.com/AUIntroBioinformatics/MadScientists.git) was made. A [Venn diagram](Rep1 Venn Diagram.pdf) was created from the text file and script. A total of 6 [Venn diagrams](https://github.com/AUIntroBioinformatics/MadScientists.git) were made for each timepoint. The top SNPs in all the replicates were then combined.  A [text file]() and [script]() were created, and a [Venn diagram](TopRep Venn Diagram.pdf) was generated to examine the total change in all the time points (Founder to Generation6, Generation6 to Generation12, and Generation12 to Generation18).  
