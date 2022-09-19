# automatically generated command file for RRTree

file of aligned sequences: ubx.aligned.EtexLdah.nogaps.faa
format: fasta
lineages: 2

#lineage affectation of sequences
Fcan_XP.021951054.1_ubx: 0
Lapu_g208.t1_ubx: 2
Lart_13_ubx: 2
Lcou_g101.t1_ubx: 2
Ldah_g11919.t1_ubx: 1
Lubb_g3060.t1_ubx: 2
Tces_g726.t1_ubx: 2
Tlon_g1067.t1_ubx: 2
Tcit_g3772.t1_ubx: 2

#lineage names
outgroup: hexa
lineage1: spin
lineage2: noto
sequence type: prot
topology: 0
threshold: 0
out text file: ubx.rrt.txt
out table file: ubx.rrt.tsv
verbose: 1
