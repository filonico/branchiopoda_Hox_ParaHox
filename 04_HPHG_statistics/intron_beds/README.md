Here you can file <code>.bed</code> files about intron positions in HPHGs of branchiopods. The last column show intron lengths. Files have been generated using the following command on HPHG gff3 files:
<code>awk -F "\t" '/intron/ {print $1"\t"$4"\t"$5"\t"$9"\t"$5-$4}' [species].HPHG.location.gff > [species].HPHG.intron.location.withlength.bed</code>
