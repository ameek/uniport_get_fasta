Dataset processing bash codes!

## step 1: get only the protine names
	$awk '{ print $2 $4 }' filename.txt //$1 for first column,$2 for second column

## Step 2: get only the unique portine names
	https://stackoverflow.com/questions/618378/select-unique-or-distinct-values-from-a-list-in-unix-shell-script
	$./yourscript.ksh | sort | uniq //FYI, yes, the sort is necessary in this command line, uniq only strips duplicate lines that are 										immediately after each other
## setp 3: get my own written shell script to get all the protin fasta from UNIPROT used in fasta/getFasta.sh

### count all the K :
$cat proteinB protinlistA | tr -cd 'K' | wc -c

### replace multiple spaces with one
$tr -s " " < file


## comparing two files

While
$grep -v -f 1.txt 2.txt > 3.txt
gives you the differences of two files (what is in 2.txt and not in 1.txt), you could easily do a

$grep -f 1.txt 2.txt > 3.txt
to collect all common lines, which should provide an easy solution to your problem. If you have sorted files, you should take comm nonetheless. Regards!


## replace:
https://www.cyberciti.biz/faq/howto-delete-word-using-sed-under-unix-linux-bsd-appleosx/
* $sed -e 's/\<regex-for-word\>//g' input > output
* $sed -e 's/\<[a-zA-Z0-9]*[g|G]\>//g' input
* $sed 's/[[]]//g' /path/to/file
* $sed 's/\[//g;s/\]//g' /path/to/file
