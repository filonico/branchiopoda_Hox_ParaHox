# automatically generated command file for RRTree

file of aligned sequences: pb.aligned.twogroups.nogaps.faa
format: fasta
lineages: 2

#lineage affectation of sequences
Dmag_XP.032785562.1_pb: 1
Dpul_EFX86812.1_pb: 1
Fcan_XP.035706958.1_pb: 0
Lapu_g3175.t1_pb: 2
Lubb_g8547.t1_pb: 2
Tlon_g2619.t1_pb: 2
Tcit_g2708.t1_pb: 2
Tces_10_pb: 2
Lart_11_pb: 2
Lcou_11_pb: 2

#lineage names
outgroup: hexa
lineage1: daphnia
lineage2: noto
sequence type: prot
topology: 0
threshold: 0
out text file: pb.rrt.txt
out table file: pb.rrt.tsv
verbose: 1
