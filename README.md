# PrInseSS
Protein Insertion Sequence Search

PrInseSS is a tool that search insertion sequences in protein families.

Input: Fasta sequence, Uniprot accesion and/or Interpro Id

## Download PrInseSS
`$ docker pull viridiplantae/PrInseSS:latest  ` 

## Run your docker viridiplantae/prinsess image

docker run --rm -i -t -v "$(pwd):/home/output" prinsess:v0.0.2 /bin/bash

**$(pwd)** points to your working directory
**/home/output** is fixed at the docker image
