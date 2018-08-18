for i in $(cat repeatedProtin)
	do 
		sed 1d $i.fasta > $i.txt
	done
