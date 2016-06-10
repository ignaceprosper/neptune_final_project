# Neptune Computational Biology - Final Project

## Guidelines - you can delete this section before submission

This repository is a stub for your final project. Fork it, develop your project, and submit it as a pull request. Edit/ delete the text in this readme as needed.

Some guidelines and tips:

- Use the stubs below to write up your final project.

- For information on formatting text files with markdown, see https://guides.github.com/features/mastering-markdown/ . You can use markdown to include images in this document by linking to files in the repository, eg `![Figure 1](./Figure1.png?raw=true)`.

- The project must be entirely reproducible. In addition to the results, the repository must include all the data (or links to data) and code needed to reproduce the results.

- If you are working with unpublished data that you would prefer not to publicly share at this time, please contact me to discuss options. In most cases, the data can be anonymized in a way that putting them in a public repo does not compromise your other goals.

- Paste references (including urls) into the reference section, and cite them with the general format (Smith at al. 2003).

- Commit and push often as you work.

OK, here we go.

# Phylogeny of HCN channels across Metazoa

## Introduction and Goals

Introduction : 	Most neurons work in a passive way, being activated externally, either by an environmental stimulus or by an action potential from other neurons. If an animal's neuronal activity only consists of such events, then it is hard to explain how a behavior could be anything else than a complex, yet mere passive reaction to the environment. Such a physiological status leaves little room for spontaneous behaviors, not to mention the question of free decision and free will in humans. Some neurons however have the ability to self-activate, thanks to the presence of hyperpolarization-activated ion channels (HCN). These channels initiate spontaneous electrical events, for example in vertebrate heart pacemaker cells. Although they were likely present in the common ancestor of Cnidaria and Bilateria, they seem to have diversified in the vertebrate lineage, and are expressed in various mammalian brain structures. One can thus hypothesize that these channels play a role in the complex cognitive and decisional processes observed in mammals. As a first step towards testing this hypothesis, I wanted to establish a detailed phylogeny of the HCN gene family across Metazoa.


Goals :

1) Identifying all members of the HCN gene family in species representing the main metazoan clades

2) Creating a multiple sequence alignements of the corresponding proteins

3) Calculating a phylogenetic tree of the HCN protein family, based on both parsimony and maximum-likelihood models.

4) Comparing the diversification of HCN proteins between clades.

As a preliminary step towrds conducting this project, I first followed the tutorial 'Hydroidolina Phylogeny Assignment' provided by Casey, to get familiar with the overall analysis. I then tried to perform all steps (finding homologs, aligning sequences, creating tree) on a limited dataset. During this project, I actually only performed step 1) on this limited dataset.


## Methods

1) to identify HCN gene family members :

As a starting point, two reference HCN protein sequences were retrieved : HCN2 from *Homo sapiens* (Bilateria), and HCN2 from *Nematostella vectensis* (Cnidaria), as well as all available protein sequences (called hereafter "target proteomes") for the following six target species :
	
	*Mus musculus* (house mouse, Chordate),
	
	*Ciona intestinalis* (transparent sea squirt, Chordate),
	
	*Saccoglossus kowalevskii* (acorn worm, Hemichordate),
	
	*Drosophila melanogaster* (fruit fly, Arthropod),
	
	*Crassostrea gigas* (Pacific oyster, Mollusc),
	
	*Trichoplax adhaerens* (Placozoa).

All sequences were manually downloaded in FASTA format from the UniProt database (http://www.uniprot.org/).

The headers of the two reference HCN sequences were edited using regular expressions, via the Python script "shorten_headers.py" stored in ./scripts. They were stored as {genus}HCN.short.fa in the working directory.

To look for homologous HCN sequences in these six target species, a protein-BLAST search was performed on my computer, using the programm 'blastp'. Databases were created locally using the command 'makeblastdb' from 'blastp', and stored in a folder called "refProteomes". Raw protein sequences files are stored as {genus}.all.fasta text files, and the newly created database files as {genus}.phr, {genus}.pin and {genus}.psq respectively. This step was executed by the script "makeDatabaseProt.sh" stored in ./scripts, and is necessary for the programm 'blastp' to run subsequent BLAST searches.

A BLAST search was then performed, using successively as query the two reference sequences against the six target proteomes. Different parameters were tested, notably expected value and output format. The final output comprised the 5 best hits for an e-value of 1e-30, displayed in the format option #7 (tabular with comment lines). Each output was stored in ./out as a {query}VS{target}.out file, and the outputs were then compiled separately for each query sequence in a text file called results_{query}.txt stored in ./out. Searches, generation and compilation of outputs were performed by the script "blast.sh".

To leave the possibility to re-run the BLAST search for individual target proteomes, in case the search gives few or no results, an additional "blast.individual.sh" was created, which allows to manually adapt e-value and display individual results.


## Results

The BLAST search has identified homologs of the HCN protein for almost all target species.

The query "Homo" has returned the maximum of 5 hits for all targets except Saccoglossus (0) and Trichoplax (2).
The query "Nematostella" has returned 5 hits for Drosophila and Mus, 4 hits for Ciona, 3 hits for Crassostrea, 1 hit for Trichoplax  and no hit for Saccoglossus.

The best hit for each target of the query "Homo" is present among the three best hits of the corresponding target of the query "Nematostella", with an e-value less than 1e-150 (except in the case of Trichoplax : e-value = 7e-36). These best hits can thus be choosen as the reference protein sequences to make the alignment from.


## Discussion

These results indicate...

The biggest difficulty in implementing these analyses was...

If I did these analyses again, I would...

## References

[1] Baker EC, Layden MJ, van Rossum DB, Kamel B, Medina M, Simpson E, et al. (2015) Functional Characterization of Cnidarian HCN Channels Points to an Early Evolution of Ih. PLoS ONE 10(11): e0142730. doi:10.1371/journal.pone.0142730
