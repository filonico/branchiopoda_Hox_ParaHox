# automatically generated command file for RRTree

file of aligned sequences: abdB.aligned.twogroups.nogaps.fna
format: fasta
lineages: 2

#lineage affectation of sequences
Dmag_XP.032785540.1_abdB: 1
Dpul_EFX86798.1_abdB: 1
Fcan_XP.035707030.1_abdB: 0
Lapu_g203.t1_abdB: 2
Lubb_g11468.t1_abdB: 2
Tlon_g1062.t1_abdB: 2
Lart_02_abdB: 2
Lcou_02_abdB: 2
Tita_02_abdB: 2
Tusa_02_abdB: 2

#lineage names
outgroup: hexa
lineage1: daphnia
lineage2: noto
sequence type: nc
topology: 0
threshold: 0
out text file: abdB.rrt.txt
out table file: abdB.rrt.tsv
distance: k2
verbose: 0
