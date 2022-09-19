# automatically generated command file for RRTree

file of aligned sequences: dfd.aligned.twogroups.nogaps.fna
format: fasta
lineages: 2

#lineage affectation of sequences
Dmag_XP.032785565.1_dfd: 1
Dpul_EFX86808.1_dfd: 1
Fcan_XP.021951082.1_dfd: 0
Lapu_g212.t1_dfd: 2
Lubb_g13200.t1_dfd: 2
Tces_g730.t1_dfd: 2
Tlon_g1071.t1_dfd: 2
Tcit_g806.t1_dfd: 2
Lart_06_dfd: 2
Lcou_06_dfd: 2

#lineage names
outgroup: hexa
lineage1: daphnia
lineage2: noto
sequence type: nc
topology: 0
threshold: 0
out text file: dfd.rrt.txt
out table file: dfd.rrt.tsv
distance: k2
verbose: 0
