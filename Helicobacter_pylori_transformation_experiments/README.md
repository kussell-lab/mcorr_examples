In this example, we will infer recombination parameters of _Helicobacter pylori_ by using reads sequenced from a transformation experiment. We will start with a multi-sample bam file (`TC1_read.bam`).

0. Follow the [instruction](https://github.com/kussell-lab/mcorr/blob/master/README.md#installation) to install `mcorr` and download this repository:
```sh
cd Downloads
git clone https://github.com/kussell-lab/mcorr_examples.git
cd mcorr_examples/Helicobacter_pylori_transformation_experiments
```

1. We then calculate correlation profiles using `mcorr-bam`, and perform fitting using `mcorr-fit`. It takes 5-10 minutes in a normal PC.
```sh
mcorr-bam NC_000915.gff TC1_read.bam TC1_read
mcorr-fit TC1_read.csv TC1_read
```

2. Results:
    * `TC1_read_fit_reports.txt`, which shows the fitting results;
    * `TC1_read_best_fit.svg`, which shows the best fit;
    * `TC1_read_parameter_histograms.svg`, which shows the distribution of the measured or inferred parameters;
    * `TC1_read_fit_results.csv`, which shows the fit results in a CSV file.
