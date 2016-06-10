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


## Methods

1) to identify HCN gene family members :

As a starting point, two reference HCN protein sequences were retrieved : HCN2 from *Homo sapiens* (Bilateria), and HCN2 from *Nematostella vectensis* (Cnidaria), as well as all available protein sequences for the following six target species : *Mus musculus* (house mouse, Chordate), *Ciona intestinalis* (transparent sea squirt, Chordate), *Saccoglossus kowalevski* (acorn worm, Hemichordate), *Drosophila melanogaster* (fruit fly, Arthropod), *Crassostrea gigas* (Pacific oyster, Mollusc) and *Trichoplax adhaerens* (Placozoa).
All sequences were manually downloaded in FASTA format from the UniProt database (http://www.uniprot.org/).

To look for homologous HCN sequences in these six target species, a protein-BLAST search was performed on my computer, using the programm 'blastp'. Databases were created locally using the command 'makeblastdb', and stored in a folder called "refProteomes". This step is necessary for the programm 'blastp' to run.









The tools I used were... See analysis files at (links to analysis files).

## Results

![Figure 1](./Figure1.png?raw=true)

In Figure 1...

## Discussion

These results indicate...

The biggest difficulty in implementing these analyses was...

If I did these analyses again, I would...

## References

[1] Baker EC, Layden MJ, van Rossum DB, Kamel B, Medina M, Simpson E, et al. (2015) Functional Characterization of Cnidarian HCN Channels Points to an Early Evolution of Ih. PLoS ONE 10(11): e0142730. doi:10.1371/journal.pone.0142730
