# BIO410-Final-Project

## Background
The data consist of 6 samples from the Zaire Ebolavirus. This virus is a type of virus that causes fatal hemorrhagic fever in humans and mammals [https://pubmed.ncbi.nlm.nih.gov/37355146/]. It is a negative-sense, single-stranded RNA virus and includes six species. The Ebola virus was first discovered in 1976 and has been involved in major outbreaks in West Africa (https://pmc.ncbi.nlm.nih.gov/articles/PMC7993122/). 

## Purpose
The purpose of this project was to construct a phylogenetic tree from 6 Zaire ebolavirus samples to determine the evolutionary relationships among them.

## Methods
-The sequencing reads came from Next Gen Seq. The raw sequencing reads are in the .fq files 
- Assembled the sequence using MEGAHIT, which is found in the folder final.contig.fa 
- Aligned the sequence using the package DECIPHER. The sequence is found in the .html file. 
- Then, created a phylogenetic tree using the ML method in the R package DECIPHER
- The R script for aligning the sequence and creating the phylogeny tree is found in the folder R-seq alignment. 

## Results
Here is the Phylogenetic tree 
![alt text](Screenshot 2026-05-01 152116.png)

Explain
- Which samples are closely related to each other
- How many individuals did these 6 examples come from, based on the phylogenetic tree 
