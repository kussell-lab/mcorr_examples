In this example, we will infer recombination parameters of _Helicobacter pylori_ by using whole-genome sequences of a panel of 401 strains. We will use the gene-by-gene alignments compiled by [Thorell _et al_](http://journals.plos.org/plosgenetics/article?id=10.1371/journal.pgen.1006546).

1. Download the gene-by-gene alignments from [https://datadryad.org//resource/doi:10.5061/dryad.8qp4n](https://datadryad.org//resource/doi:10.5061/dryad.8qp4n), and unzip it.
```sh
curl -O https://datadryad.org/bitstream/handle/10255/dryad.134969/BIGSdb_gene-by-gene_alignment.xmfa.gz
gunzip -f BIGSdb_gene-by-gene_alignment.xmfa.gz
```

2. For the purpose of demonstration, we will choose 50 strains randomly, and remove those gene sequences with too many gaps (number of gaps > 2% of the total gene length).
```sh
python3 random_choose_strains.py BIGSdb_gene-by-gene_alignment.xmfa Helicobacter_pylori.xmfa 50
```

3. We then calculate correlation profiles using `mcorr-xmfa`, and perform fitting using `mcorr-fit`. It takes 5-10 minutes in a normal PC.
```sh
mcorr-xmfa Helicobacter_pylori.xmfa Helicobacter_pylori
mcorr-fit Helicobacter_pylori.csv Helicobacter_pylori
```

4. Results:
    * `Helicobacter_pylori_fit_reports.txt`, which shows the fitting results.
    * `Helicobacter_pylori_best_fit.svg`, which shows the best fit;
    * `Helicobacter_pylori_parameter_histograms.svg`, which shows the distribution of the measured or inferred parameters.
