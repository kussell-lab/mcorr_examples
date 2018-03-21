In this section, we will infer recombination parameters for _Helicobacter
pylori_ using a panel of global strains.

1. Download the gene-by-gene alignments of 401 _H. pylori_ strains in `.xmfa` format from [https://datadryad.org//resource/doi:10.5061/dryad.8qp4n](https://datadryad.org//resource/doi:10.5061/dryad.8qp4n), and unzip it.
```sh
curl -O https://datadryad.org/bitstream/handle/10255/dryad.134969/BIGSdb_gene-by-gene_alignment.xmfa.gz
gunzip -f BIGSdb_gene-by-gene_alignment.xmfa.gz
```

2. For the purpose of demonstration, we will choose 50 strains at random and filter sequences
   with too many gaps (number of gaps > 2% of the total length).
```sh
python3 random_choose_strains.py BIGSdb_gene-by-gene_alignment.xmfa Helicobacter_pylori.xmfa 50
```

3. Calculate and fit correlation profiles:
```sh
mcorr-xmfa Helicobacter_pylori.xmfa Helicobacter_pylori
mcorr-fit Helicobacter_pylori.csv Helicobacter_pylori
```

4. Results:
    * `Helicobacter_pylori_fit_reports.txt` shows the fitting results.
    * `Helicobacter_pylori_best_fit.svg` shows the best fit and residual plots;
    * `Helicobacter_pylori_parameter_histograms.svg` shows the distribution of parameters.
