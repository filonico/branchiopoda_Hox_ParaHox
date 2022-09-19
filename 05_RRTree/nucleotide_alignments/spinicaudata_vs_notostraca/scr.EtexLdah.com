# automatically generated command file for RRTree

file of aligned sequences: scr.aligned.EtexLdah.nogaps.fna
format: fasta
lineages: 2

#lineage affectation of sequences
Etex_C0007.g25.t1_scr: 1
Fcan_XP.021951280.1_scr: 0
Lapu_g211.t1_scr: 2
Ldah_g6649.t1_scr: 1
Lubb_g3227.t1_scr: 2
Tces_g729.t1_scr: 2
Lart_12_scr: 2
Lcou_12_scr: 2
Tlon_12_scr: 2
Tcit_12_scr: 2

#lineage names
outgroup: hexa
lineage1: spin
lineage2: noto
sequence type: nc
topology: 0
threshold: 0
out text file: scr.rrt.txt
out table file: scr.rrt.tsv
distance: k2
verbose: 1
