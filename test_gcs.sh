#!/bin/bash

# Notes:
# make version 
# cd lib/htslib
# ./configure --enable-gcs --enable-s3 --enable-libcurl --without-libdeflate 
# make
# cd ../../
# make
./HipSTR \
    --bams gs://gatk-test-data/wgs_cram/NA12878_20k_hg38/NA12878.cram \
    --fasta Homo_sapiens_assembly38.fasta \
    --regions test.bed \
    --def-stutter-model \
    --min-reads 2 \
    --str-vcf test.vcf.gz
