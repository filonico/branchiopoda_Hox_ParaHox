# automatically generated command file for RRTree

file of aligned sequences: lab.aligned.EtexLdah.nogaps.faa
format: fasta
lineages: 2

#lineage affectation of sequences
Etex_C0002.g597.t1_lab: 1
Etex_C0007.g32.t1_lab: 1
Fcan_XP.021952045.1_lab: 0
Lapu_g3174.t1_lab: 2
Ldah_g14672.t1_lab: 1
Ldah_g6310.t1_lab: 1
Lubb_g12364.t1_lab: 2
Tita_g5763.t1_lab: 2
Tlon_g2620.t1_lab: 2
Tusa_g7702.t1_lab: 2
Lart_10_lab: 2
Lcou_10_lab: 2

#lineage names
outgroup: hexa
lineage1: spin
lineage2: noto
sequence type: prot
topology: 0
threshold: 0
out text file: lab.rrt.txt
out table file: lab.rrt.tsv
verbose: 1
