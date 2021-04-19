#!/bin/bash
#get putative HOXL from a (set of) proteome by blasting it against the ANTP complete database
#$1 = proteome(s); file name should be "spID.something.else.faa"
#$2 = ANTP blast-database
#$3 = DmelDpulMmus proteome database
#$4 = HOXL gene accession list from DmelDpulMmus

#get spID from proteome filename
spID=$(echo $1 | awk -F "/" '{print $NF}' | awk -F "." '{print $1}')

###blastp search

echo -e "\n#### Putative HOXL extraction for ""$spID"" ####"

echo -e "\tStarting the blastp search"

blastp -query $1 -db $2 -max_hsps 1 -evalue 0.00001 -num_threads 15 -outfmt "6 qseqid sseqid pident length mismatch gapopen qstart qend sstart send evalue bitscore qcovs qlen slen" -out "$spID"_vs_antps.tsv &
#display a spinning bar while running the blastp search
PID=$!
i=1
sp="////----\\\\||||"
echo -en "\t "
while [ -d /proc/$PID ]; do
  printf "\b${sp:i++%${#sp}:1}"
done

echo -e "\bDone blastp search\n\t-----------------------"

if [ ! -d "BEST_HITS_1" ]; then
	mkdir BEST_HITS_1
fi

#best hit extraction
awk '!seen[$1]++' "$spID"_vs_antps.tsv > BEST_HITS_1/"$spID"_vs_antps_bh.tsv

echo -e "\tBest hit extracted"

cd BEST_HITS_1

if [ ! -d "BEST_HITS_1_SEQS" ]; then
        mkdir BEST_HITS_1_SEQS
fi

###retrieve best hit sequence

#"PROTEOMES/" is the directory that include the (set of) proteome fasta file(s)
echo -e "\tRetrieving best hit sequences"

for j in $(awk -F "\t" '{print $1}' < "$spID"_vs_antps_bh.tsv); do
	grep -A 1 $j ../PROTEOMES/"$spID".aa.rn.faa >> BEST_HITS_1_SEQS/"$spID"_vs_antps_bh.faa
done;

echo -e "\tBest hit sequences retrieved\n\t-----------------------"

cd BEST_HITS_1_SEQS

if [ ! -d "BESTHITS_vs_DmelDpulMmus" ]; then
        mkdir BESTHITS_vs_DmelDpulMmus
fi

###reciprocal blastp search and best hit extraction

echo -e "\tStarting the blastp search against DmelDpulMmus proteomes and best hit extraction"

blastp -query "$spID"_vs_antps_bh.faa -db ../../$3 -max_hsps 1 -evalue 0.00001 -num_threads 15 -outfmt "6 qseqid sseqid pident length mismatch gapopen qstart qend sstart send evalue bitscore qcovs qlen slen" -out BESTHITS_vs_DmelDpulMmus/"$spID"BH_vs_DmelDpulMmus.tsv &
#display a spinning bar while running the blastp search
PID=$!
i=1
sp="//--\\||"
echo -en "\t "
while [ -d /proc/$PID ]; do
  printf "\b${sp:i++%${#sp}:1}"
done

cd BESTHITS_vs_DmelDpulMmus

if [ ! -d "BEST_HITS_2" ]; then
        mkdir BEST_HITS_2
fi

awk '!seen[$1]++' "$spID"BH_vs_DmelDpulMmus.tsv > BEST_HITS_2/"$spID"BH_vs_DmelDpulMmus_bh.tsv

echo -e "\bDone blastp search and best hit extraction\n\t-----------------------"

cd BEST_HITS_2

if [ ! -d "PUTATIVE_HOXL" ]; then
        mkdir PUTATIVE_HOXL
fi

###HOXL extraction

echo -e "\tStarting HOXL genee extraction"

#grep HOXL DmelDpulMmus accession in the blastp results
grep -f ../../../../$4 "$spID"BH_vs_DmelDpulMmus_bh.tsv > PUTATIVE_HOXL/"$spID"BH_vs_DmelDpulMmus_bh_putativeHOXL.tsv

cd PUTATIVE_HOXL

if [ ! -d "PUTATIVE_HOXL_SEQS" ]; then
        mkdir PUTATIVE_HOXL_SEQS
fi

echo -e "\tHOXL gene succesfully extracted\n\t-----------------------"

###retrieve HOXL sequences

#"PROTEOMES/" is the directory that includes all proteome fasta files

echo -e "\tRetrieving HOXL sequences"

for j in $(awk -F "\t" '{print $1}' < "$spID"BH_vs_DmelDpulMmus_bh_putativeHOXL.tsv); do
        grep -A 1 $j ../../../../../PROTEOMES/"$spID".aa.rn.faa >> PUTATIVE_HOXL_SEQS/"$spID"_putativeHOXL.faa
done;

echo -e "\tHOXL sequences retrieved\n\t-----------------------\nYOU'RE DONE!"
