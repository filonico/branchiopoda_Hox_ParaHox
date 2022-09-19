# automatically generated command file for RRTree

file of aligned sequences: abdB.aligned.nogaps.faa
format: fasta
lineages: 3

#lineage affectation of sequences
Dmag_XP.032785540.1_abdB: 1
Dpul_EFX86798.1_abdB: 1
Fcan_XP.035707030.1_abdB: 0
Lapu_g203.t1_abdB: 2
Ldah_g13731.t1_abdB: 1
Ldah_g1520.t1_abdB: 1
Lubb_g11468.t1_abdB: 2
Tlon_g1062.t1_abdB: 2
Lart_02_abdB: 2
Lcou_02_abdB: 2
Tces_02_abdB: 2
Tcit_02_abdB: 2
Afr1_17013_abdB: 3

#lineage names
outgroup: hexa
lineage1: onyc
lineage2: noto
lineage3: anos
sequence type: prot
topology: 0
threshold: 0
out text file: abdB.rrt.txt
out table file: abdB.rrt.tsv
verbose: 1
