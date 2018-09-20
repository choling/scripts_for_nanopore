# scripts_for_nanopore

## workflow for nanopore sequencing data
### 1.Basecall the sequencing data(.fast5) to fastq using official basecaller Albacore
### 2.Count the read length distribution using count_readlen.sh and visualize the run performance using package [pycoQC](https://github.com/a-slide/pycoQC)
### 3.Aligh the fastq to human reference genome(hg19 or hg38)
### 4.samtool flagstat to report the alignment stats
### 5.Using SV caller, such as [sniffle](https://github.com/fritzsedlazeck/Sniffles) or [nanoSV](https://github.com/mroosmalen/nanosv)
