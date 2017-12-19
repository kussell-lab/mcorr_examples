# mcorr example data for [mcorr](https://github.com/kussell-lab/mcorr)

It contains two data sets from the _H. pylori_ transformation experiment (20 strains, 1532 genes):

*  Whole-genome alignment:

    `mcorr-xmfa TC1_genome.xmfa TC1_genome`

    `python $HOME/go/src/github.com/kussell-lab/mcorr/cmd/fitting/FitP.py TC1_genome.csv TC1_genome`

*  Read alignment:

    `mcorr-bam NC_018939.gff TC1_read.bam TC1_read`

    `python $HOME/go/src/github.com/kussell-lab/mcorr/cmd/fitting/FitP.py TC1_read.csv TC1_read`
