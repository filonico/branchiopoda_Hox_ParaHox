# README
<code>[species].intergenic.location.withlength.bed</code> files are about intergenic positions in HPHGs of branchiopods. The last column show intergenic lengths. These files were generated using <code>[bedtools subtract](https://bedtools.readthedocs.io/en/latest/content/tools/subtract.html)</code> from [species].HPHG.clusters.bed</code> and gff3 HPHG gff3 files:

```
bedtools subtract -a [species].HPHG.clusters.bed -b [species].HPHG.location.gff > [species].intergenic.location.bed
awk -F "\t" '{print $0"\t"$3-$2}' [species].intergenic.location.bed > [species].intergenic.location.withlength.bed
```
