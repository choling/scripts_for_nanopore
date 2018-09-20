#!/bin/bash

name=wgs_hkcgs_demo_DMD_2aug
ref=/nas4/rma/working/sv/ref/hs37d5.fa.mmi
fastq=${name}.fastq.gz
minimap2=/nas4/rma/working/minion_project/tools/minimap2/minimap2
bam=${name}_minimap2.bam

$minimap2 -t 48 --MD -a $ref $fastq | samtools sort -@ 48 -o $bam - && samtools index -@ 48 $bam
samtools stats $bam > $bam.stats
