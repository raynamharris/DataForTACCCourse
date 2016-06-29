# create a list of commands to count the number of reads in each file
# we will use grep to grep for the first of every four lines, relying on standard .fastq formatting

rm wc_reads.cmds #remove any previous file if it existed

#
for file in *.fastq
do
  	echo $file
        newfile=$(echo ${file}_wc_reads.txt)
        echo $newfile
        cat >> wc_reads.cmds <<EOF
        head -100000 $file | grep '^@K00179' | wc -l > $newfile
EOF
done
