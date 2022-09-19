# automatically generated command file for RRTree

file of aligned sequences: abdA.aligned.EtexLdah.nogaps.fna
format: fasta
lineages: 2

#lineage affectation of sequences
Etex_C0002.g612.t1_abdA: 1
Fcan_XP.035706584.1_abdA: 0
Lapu_g207.t1_abdA: 2
Ldah_g3248.t1_abdA: 1
Lubb_g2378.t1_abdA: 2
Tces_g723.t1_abdA: 2
Tlon_g1065.t1_abdA: 2
Tcit_g509.t1_abdA: 2
Lart_01_abdA: 2
Lcou_01_abdA: 2

#lineage names
outgroup: hexa
lineage1: spin
lineage2: noto
sequence type: nc
topology: 0
threshold: 0
out text file: abdA.rrt.txt
out table file: abdA.rrt.tsv
distance: k2
verbose: 1
