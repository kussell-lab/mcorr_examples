#!/bin/bash
mcorr-xmfa TC1_genome.xmfa TC1_genome
python $HOME/go/src/github.com/kussell-lab/mcorr/cmd/fitting/FitP.py TC1_genome.csv TC1_genome
mcorr-bam NC_018939.gff TC1_read.bam TC1_read
python $HOME/go/src/github.com/kussell-lab/mcorr/cmd/fitting/FitP.py TC1_read.csv TC1_readore