#!/bin/bash

fastq=wgs_hkcgs_demo_DMD_2aug.fastq
filelist=filelist.txt

set -e

ls ../*/*/*/workspace/*/*.fastq > ${filelist}
cat ${filelist} | xargs cat | pigz > ${fastq}.gz
