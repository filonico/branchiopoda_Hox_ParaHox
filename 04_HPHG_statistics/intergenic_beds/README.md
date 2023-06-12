# README
<code>[species].intergenic.location.withlength.bed</code> files are about intergenic positions in HPHGs of branchiopods. The last column show intergenic lengths. These files were generated using <code>[bedtools subtract](https://bedtools.readthedocs.io/en/latest/content/tools/subtract.html)</code> from [species].HPHG.clusters.bed</code> and [HPHG gff3 files](https://github.com/filonico/branchiopoda_Hox_ParaHox/tree/main/07_HPHG_gffs):

```
bedtools subtract -a [species].HPHG.clusters.bed -b [species].HPHG.location.gff > [species].intergenic.location.bed
awk -F "\t" '{print $0"\t"$3-$2}' [species].intergenic.location.bed > [species].intergenic.location.withlength.bed
```
