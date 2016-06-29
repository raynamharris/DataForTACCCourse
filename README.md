# Data for Intro to TACC Course

All computing for the Intro to TACC Course will be done on the TACC clustes. 

These files are stored in $WORK on TACC in order to lanch the jobs on stampede. 

For easy viewing, I've also stored them here.  

## myfirstbath

This is the name of the directory I created to house what I think are nice beginner workflows for someone's first batch script

Inside this directory are three sub-directories

- launcher
- wc_reads
- wc_read_better

### launcher
This is pretty much verbatum the example launcher script given by tacc. I've changed it to add the allocation that will be used for the course. Otherwise, its stright out of the box.

### wc_reads

This subdirectory contains some tiny .fastq files and three scripts. 

- wc_reads.cmds is the list of commands to be executed on TACC that will count the number of reads in each file.
- wc_reads.slurm is the batch script that will execute the commands on stampede
- .wc_reads.sh is a shell script that I hid from easy access because I think the for loop I used is a little above the scope and I don't want to intruce it write off the bat, but will save that till later in the course.

### wc_reads_better

Basically, really early on I want to introduce students to some data managment tools. 

Here, I've add some organization with sub-directories. 

- The scripts are stored in bin/
- The data are stored in data/
- The results/ will be populated automatically using the lines of code at the .slurm file. I've used variables to name results sub-directories with the job name and job number so that all results are stored with unique identifies for good record keeping.

## Feedback Welcome

I'm always looking for better ways of doing things, especially when it comes to data management, so feel free to make suggestions for imporvement. 


 
