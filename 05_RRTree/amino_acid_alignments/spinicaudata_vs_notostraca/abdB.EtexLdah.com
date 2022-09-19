# automatically generated command file for RRTree

file of aligned sequences: abdB.aligned.EtexLdah.nogaps.faa
format: fasta
lineages: 2

#lineage affectation of sequences
Fcan_XP.035707030.1_abdB: 0
Lapu_g203.t1_abdB: 2
Ldah_g13731.t1_abdB: 1
Ldah_g1520.t1_abdB: 1
Lubb_g14323.t1_abdB: 2
Tlon_g1062.t1_abdB: 2
Lart_02_abdB: 2
Lcou_02_abdB: 2
Tita_02_abdB: 2
Tusa_02_abdB: 2

#lineage names
outgroup: hexa
lineage1: spin
lineage2: noto
sequence type: prot
topology: 0
threshold: 0
out text file: abdB.rrt.txt
out table file: abdB.rrt.tsv
verbose: 1
