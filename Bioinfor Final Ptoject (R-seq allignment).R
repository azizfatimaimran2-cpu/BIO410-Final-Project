# Read in megahit assembly results for each sample
allcontigs <- c()
for(i in 1:6){
  contigs <- readDNAStringSet(paste0('//wsl.localhost/Ubuntu/home/aziz/MEGAHIT-1.2.9-Linux-x86_64-static/bin/t', i, '_out/final.contigs.fa'))
  allcontigs <- c(allcontigs, contigs)
}
# This loop outputs a list, so we flatten the list
allcontigs <- do.call(c, allcontigs)
# There are some small fragments of genomes in the assmebly; we are only going to align the
#biggest parts (aka the ones that are bigger than 5 kbp; the genome itself is around 18 kbp).
toalign <- allcontigs[which(nchar(allcontigs) > 5000)]
names(toalign) <- 1:length(toalign)
library(DECIPHER)
alignment <- AlignSeqs(toalign)
BrowseSeqs(alignment, htmlFile = 'final_project.html')
tree <- Treeline(alignment, method = 'ML', showPlot = T)


