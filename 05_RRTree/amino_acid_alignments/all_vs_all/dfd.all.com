# automatically generated command file for RRTree

file of aligned sequences: dfd.aligned.nogaps.faa
format: fasta
lineages: 3

#lineage affectation of sequences
Dmag_XP.032785565.1_dfd: 1
Dpul_EFX86808.1_dfd: 1
Etex_C0002.g599.t1_dfd: 1
Etex_C0007.g27.t1_dfd: 1
Etex_C0007.g27.t2_dfd: 1
Fcan_XP.021951082.1_dfd: 0
Lapu_g212.t1_dfd: 2
Ldah_g6648.t1_dfd: 1 
Lubb_g10986.t1_dfd: 2
Tita_g730.t1_dfd: 2
Tlon_g1071.t1_dfd: 2
Tusa_g806.t1_dfd: 2
Lart_06_dfd: 2
Lcou_06_dfd: 2
Afr1_17275_dfd: 3

#lineage names
outgroup: hexa
lineage1: onyc
lineage2: noto
lineage3: anos
sequence type: prot
topology: 0
threshold: 0
out text file: dfd.rrt.txt
out table file: dfd.rrt.tsv
verbose: 1
