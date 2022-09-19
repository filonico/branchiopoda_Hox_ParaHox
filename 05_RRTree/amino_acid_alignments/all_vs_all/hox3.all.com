# automatically generated command file for RRTree

file of aligned sequences: hox3.aligned.nogaps.faa
format: fasta
lineages: 3

#lineage affectation of sequences
Dmag_XP.032785561.1_hox3: 1
Dpul_EFX86809.1_hox3: 1
Etex_C0007.g29.t1_hox3: 1
Fcan_XP.021951314.1_hox3: 0
Lapu_g213.t1_hox3: 2
Lubb_g3235.t1_hox3: 2
Tita_g731.t1_hox3: 2
Tlon_g1073.t1_hox3: 2
Tusa_g808.t1_hox3: 2
Lart_09_hox3: 2
Lcou_09_hox3: 2
Afr1_17274_hox3: 3

#lineage names
outgroup: hexa
lineage1: onyc
lineage2: noto
lineage3: anos
sequence type: prot
topology: 0
threshold: 0
out text file: hox3.rrt.txt
out table file: hox3.rrt.tsv
verbose: 1
