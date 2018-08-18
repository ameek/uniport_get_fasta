#get uniq protins only
#cat protinName.txt | sort | uniq > UprotinName.txt

for i in $(cat repeatedProtin.txt); do
	wget http://www.uniprot.org/uniprot/$i.fasta
done

cat *.fasta > RallCombinedFasta.txt
mkdir RFastafiles
mv *.fasta RFastafiles/
