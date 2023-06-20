# Comparative genomics of *Hox* and *ParaHox* genes among major lineages of Branchiopoda with emphasis on tadpole shrimps — Data and code

In this repository you will find raw data and codes used to perform the analyses of *Hox* and *ParaHox* genes (HPHGs) in Branchiopoda which support the study:

> **[Nicolini F](https://linktr.ee/filo.nico/), [Martelossi J](https://github.com/jacopoM28/), [Forni G](https://github.com/for-giobbe/), Savojardo C, Mantovani B and [Luchetti A](https://github.com/andluche)** (2023). [Comparative genomics of *Hox* and *ParaHox* genes among major lineages of Branchiopoda with emphasis on tadpole shrimps](https://www.frontiersin.org/articles/10.3389/fevo.2023.1046960/full). *Front. Ecol. Evol.* 11:1046960.
>
> **Abstract.** *Hox* and *ParaHox* genes (HPHGs) are key developmental genes that pattern regional identity along the anterior–posterior body axis of most animals. Here, we identified HPHGs in tadpole shrimps (Pancrustacea, Branchiopoda, Notostraca), an iconic example of the so-called “living fossils” and performed a comparative genomics analysis of HPHGs and the *Hox* cluster among major branchiopod lineages. Notostraca possess the entire Hox complement, and the *Hox* cluster seems to be split into two different subclusters, although we were not able to support this finding with chromosome-level assemblies. However, the genomic structure of *Hox* genes in Notostraca appears more derived than that of *Daphnia* spp., which instead retains the plesiomorphic condition of a single compact cluster. Spinicaudata and *Artemia franciscana* show instead a *Hox* cluster subdivided across two or more genomic scaffolds with some orthologs either duplicated or missing. Yet, branchiopod HPHGs are similar among the various clades in terms of both intron length and number, as well as in their pattern of molecular evolution. Sequence substitution rates are in fact generally similar for most of the branchiopod *Hox* genes and the few differences we found cannot be traced back to natural selection, as they are not associated with any signals of diversifying selection or substantial switches in selective modes. Altogether, these findings do not support a significant stasis in the Notostraca *Hox* cluster and further confirm how morphological evolution is not tightly associated with genome dynamics.

<p align="center">
<img src="https://user-images.githubusercontent.com/72141380/214382967-94b045a6-419a-44e4-8703-ec5b8bbc208f.png", width=800>
</p>


Feel also free to visit our group GitHub page **[CompBio-BO](https://github.com/CompBio-BO)**.

## Infos
- <code>[01_HPHG_seqs/](01_HPHG_seqs/)</code> contains HPHG sequences in fasta format, as well as data and the R script to generate the raw version of **[Suppl. Fig. S2](https://github.com/filonico/branchiopoda_Hox_ParaHox/blob/main/08_figures/suppl_fig_2.JPEG)**.
- <code>[02_HPHG_trees/](02_HPHG_trees/)</code> contains HPHG ML phylogenetic trees as in **[Fig. 1A](https://github.com/filonico/branchiopoda_Hox_ParaHox/blob/main/08_figures/figure_1.jpg)** and **[Fig. 3](https://github.com/filonico/branchiopoda_Hox_ParaHox/blob/main/08_figures/figure_3.jpg)**.
- <code>[03_HPHG_structure/](03_HPHG_structure/)</code> contains data and R script to generate the raw version of **[Fig. 1B](https://github.com/filonico/branchiopoda_Hox_ParaHox/blob/main/08_figures/figure_1.jpg)**.
- <code>[04_HPHG_statistics/](04_HPHG_statistics/)</code> contains data and R script to generate the raw version of **[Fig. 2](https://github.com/filonico/branchiopoda_Hox_ParaHox/blob/main/08_figures/figure_2.jpg)**.
- <code>[05_RRTree/](05_RRTree/)</code> contains data and command files to perform the [RRTree](https://github.com/mrrlab/RRTree) analysis.
- <code>[06_HyPhy/](06_HyPhy/)</code> contains data and command files to perform the [HyPhy](https://github.com/veg/hyphy) analysis.
- <code>[07_HPHG_gffs/](07_HPHG_gffs/)</code> contains annotation files of HPHG in branchiopods.
- <code>[08_figures/](08_figures/)</code> contains all the figures from the [published manuscript](https://www.frontiersin.org/articles/10.3389/fevo.2023.1046960/full).
