#Convert FASTQ files to FASTA and edit lines
for FILE in *.fastq
do
	# the command between $(...) is to remove .fastq format
	awk 'NR%4' $FILE | awk 'NR%3' | sed 's/@/>/g' > $(basename $FILE .fastq).fasta
done
# pulling back from staging area
