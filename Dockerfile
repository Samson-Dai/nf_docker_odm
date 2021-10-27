# base image: rocker/verse (with a specific version of R)
FROM rocker/r-ver:4.0.0

# required
LABEL maintainer="Songcheng Dai <dscsamson@gmail.com>"

RUN apt-get update && apt-get install -y --no-install-recommends \
        libgit2-dev \
        libxml2-dev

# Install dependencies from CRAN 
RUN install2.r --error \
	  readr\
    magrittr\
    data.table\
    Matrix\
    Rcpp\
    crayon\
    dplyr\
    BiocManager\
    devtools

## Install Bioconductor packages
COPY ./requirements-bioc.R .
RUN apt-get update \
 && apt-get install -y --no-install-recommends \
   libfftw3-dev \
   gcc && apt-get clean \
 && rm -rf /var/lib/apt/lists/*
RUN Rscript -e 'requireNamespace("BiocManager"); BiocManager::install(ask=F);' \
&& Rscript requirements-bioc.R

# Install ondisc from Github
RUN Rscript -e 'devtools::install_github("timothy-barry/ondisc@HEAD")'

