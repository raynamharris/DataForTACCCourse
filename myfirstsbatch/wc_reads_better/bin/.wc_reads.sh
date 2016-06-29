
rm wc_reads.cmds #remove any previous file if it existed

cd ../data # move into directory with data

# for human  files

for file in human*.fastq 
do
	echo $file
	newfile=$(echo ${file}_rawreads.txt)
	echo $newfile
	cat >> wc_reads.cmds <<EOF
	head -100000 ../data/$file | grep '^@HW' | wc -l > $newfile
EOF
done


# for yeast files

for file in yeast*.fastq
do
  	echo $file
        newfile=$(echo ${file}_rawreads.txt)
        echo $newfile
        cat >> wc_reads.cmds <<EOF
        head -100000 ../data/$file | grep '^@HW' | wc -l > $newfile
EOF
done


# for SRR files

for file in SRR*.fastq
do
  	echo $file
        newfile=$(echo ${file}_rawreads.txt)
        echo $newfile
        cat >> wc_reads.cmds <<EOF
        head -100000 ../data/$file | grep '^@SRR' | wc -l > $newfile
EOF
done


# for chicken file
for file in chicken.fastq
do
  	echo $file
        newfile=$(echo ${file}_rawreads.txt)
        echo $newfile
        cat >> wc_reads.cmds <<EOF
        head -100000 ../data/$file | grep '^@SRR' | wc -l > $newfile
EOF
done

mv wc_reads.cmds ../bin  # move cmds back to bin
