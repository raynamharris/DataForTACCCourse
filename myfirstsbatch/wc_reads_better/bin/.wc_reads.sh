# create a list of commands to count the number of reads in each file
# we will use grep to grep for the first of every four lines, relying on standard .fastq formatting

cd ../data # move into directory with data
rm wc_reads.cmds #remove any previous file just incase it existed

#
for file in *.fastq
do
  	echo $file
        newfile=$(echo ${file}_wc_reads.txt)
        echo $newfile
        cat >> wc_reads.cmds <<EOF
        head -100000 ../data/$file | grep '^@K00179' | wc -l > $newfile
EOF
done

mv wc_reads.cmds ../bin  # move cmds back to bin


