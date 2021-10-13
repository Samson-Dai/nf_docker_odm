# nf_docker_demo

A repo containing a simple Nextflow pipeline. There are several ways to run this pipeline:

1. With or without the docker image. To use the Docker image, use the flag `-with-docker timbarry/nf_docker_demo:1.0`. If not using the Docker image, be sure to have the following dependences installed:
- R (>= 4.0.0)
- `broom`
- `dplyr`
- `magrittr`

2. From a cached repo or a cloned repo. To download the pipeline automatically from Github and run the cached version, use
`nextflow run timothy-barry/nf_docker_demo -r main`. Otherwise, git clone the repo, cd into the cloned directory, and run the pipeline via `nextflow run main.nf`.

For example, to download the repository automatically from Github and run it with docker:
`nextflow run timothy-barry/nf_docker_demo -r main -with-docker timbarry/nf_docker_demo:1.0`.
# nf_docker_odm
