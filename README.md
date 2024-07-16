# Conda recipes for ARM64

This project is a collection of [Conda](https://docs.conda.io/en/latest/) recipes optimized for `arm64` CPU architecture, for tools mostly used by [**nf-core**](https://nf-co.re/) pipelines.

Those recipes are made publicly available through [Seqera channel](https://anaconda.org/seqera) on Anaconda.org.

>[!NOTE]
> This project is archived since Bioconda is now building for ARM64 and Mac Silicon. Read more [here](https://github.com/bioconda/bioconda-recipes/issues/33333#issuecomment-2221176852).

## Environment setup for building packages

1. Start and login to an EC2 Graviton instance (ie. c6g.large)
2. Install some required system packages
```bash
sudo yum update
sudo yum install git
```
3. Install `aarch64` Conda
```bash
curl -O https://repo.anaconda.com/archive/Anaconda3-2022.10-Linux-aarch64.sh
bash ./Anaconda3-2022.10-Linux-aarch64.sh
```
4. Define default channels order
```bash
conda config --system --add channels defaults
conda config --system --add channels conda-forge
conda config --system --add channels bioconda
conda config --system --add channels seqera
```

5. Setup your SSH keys and clone this repo
```bash
git clone git@github.com:seqeralabs/conda-recipes.git
```

## Build a package using conda build

1. Go to the recipe folder and build it with `conda build`

Example:
```bash
cd recipes/pbzip2
conda build .
```

