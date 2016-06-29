# This script creates "small" .fastq files for teaching students basics of shell and TACC

cd /work/02189/rmharris/IntMolModule/STG/data/2016-05-24-JA16268 #raw data

# I use base name to rename the output from *.fastq.gz to *_small.fastq
# zcat will send the unzipped contents to standard output
# I use tail then head to get some of the middle reads, rather than the first reads

for file in GM_25*
do
	echo $file
	newfile=$(basename $file .fastq.gz)_small.fastq
	echo $newfile
	zcat $file | tail -1000 | head -400 > $newfile
done

for file in GM_26*
do
	echo $file
	newfile=$(basename $file .fastq.gz)_small.fastq
	echo $newfile
	zcat $file | tail -1000 | head -100 > $newfile
done

for file in PD_10*
do
	echo $file
	newfile=$(basename $file .fastq.gz)_small.fastq
	echo $newfile
	zcat $file | tail -1000 | head -200 > $newfile
done

for file in PD_11*
do
	echo $file
	newfile=$(basename $file .fastq.gz)_small.fastq
	echo $newfile
	zcat $file | tail -1000 | head -300 > $newfile
done

## now, move all small.fastq files to the "myfirstsbatch" directory

cp *small.fastq /work/02189/rmharris/myfirstsbatch/wc_reads
mv *small.fastq /work/02189/rmharris/myfirstsbatch/wc_reads_better/data

