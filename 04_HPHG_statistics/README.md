# README
  - <code>intergenic_beds/</code> contains bed files of HPHG intergenic spaces.
  - <code>intron_beds/</code> contains bed files of HPHG introns.
  - <code>HPHG_statistics.R</code> is the R script to generate raw **Fig. 2**. The final version was then manually edited.
  - <code>.tsv</code> files are necessary to generate the multi-panel **Fig. 2**; intron and intergenic data were obtained from bed files in <code>intron_beds/</code> and <code>intergenic_beds/</code>, respectively, using the following script:
```
for i in *withlength.bed; do spID="${i::4}"; awk -F "\t" -v spID="$spID" '{print spID"\t"$NF}' $i >> branchio.[intron/intergenic].length.tsv; done
```
