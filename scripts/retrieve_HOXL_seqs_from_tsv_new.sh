#!/bin/bash

#Make fasta files of HOXL genes according to species and to gene families
#$1 = HOXL tsv summary (species vs genes)

if [ -d fasta_per_species ]; then

        rm -rf fasta_per_species

fi

if [ -d fasta_per_genes ]; then
        
        rm -rf fasta_per_genes

fi

mkdir fasta_per_{species,genes}

#### CREATE SPECIES FASTA FILES ####

#for loop on speciesID from $1

for i in $(awk '(NR>1)' $1 | awk -F "\t" '{print $1}'); do
        
        grep $i $1 > "$i".tmp

        sed -Ei 's/\t/\n/g; s/\|/\n/g' "$i".tmp

        sed -i '/-/d' "$i".tmp

        #create a list file of HOXL occurrence for every species

        tail -n +2 "$i".tmp > "$i".ls

        rm "$i".tmp

done

#for every list file create a fasta file

for i in *ls; do

        spID=$(echo ${i::-3})

        grep -A1 -f $i PROTEOMES/"$spID"*faa >> fasta_per_species/"$spID"_HOXL.faa
        
        sed -Ei '/^--/d' fasta_per_species/"$spID"_HOXL.faa

done

rm *ls

echo -e "\bSpecies FASTA files created!"

### CREATE GENE FASTA FILES ###

#create a list file for each $1 column

awk '{ for (i=2; i<=NF; i++) print $i > i".tmp" }' $1

sed -Ei 's/\t/\n/g; s/\|/\n/g' *tmp

sed -i '/-/d' *tmp

for i in *tmp; do

        geneID=$(head -1 $i)

        tail -n +2  $i > "$geneID".ls

        rm $i

done

#for every list file create a fasta file

for i in *ls; do

        geneID=$(echo ${i::-3})

        grep -A1 -f $i PROTEOMES/*faa > fasta_per_genes/"$geneID".faa
        
        sed -Ei '/^--/d' fasta_per_genes/"$geneID".faa

        sed -Ei 's/^PROTEOMES.+://; s/^PROTEOMES.+-//' fasta_per_genes/"$geneID".faa
        
        sed -Ei "/^>/ s/$/_${i::-3}/" fasta_per_genes/"$geneID".faa
done

rm *ls

echo -e "\bGene FASTA files created!"