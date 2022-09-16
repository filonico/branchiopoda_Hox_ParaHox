# automatically generated command file for RRTree

file of aligned sequences: ubx.aligned.nogaps.faa
format: fasta
lineages: 3

#lineage affectation of sequences
Dmag_XP.032785569.1_ubx: 1
Dpul_EFX86802.1_ubx: 1
Fcan_XP.021951054.1_ubx: 0
Lapu_g208.t1_ubx: 2
Lart_13_ubx: 2
Lcou_g101.t1_ubx: 2
Ldah_g11919.t1_ubx: 1
Lubb_g15635.t1_ubx: 2
Tita_g726.t1_ubx: 2
Tlon_g1067.t1_ubx: 2
Tusa_g3772.t1_ubx: 2
Afr1_13756_ubx: 3

#lineage names
outgroup: hexa
lineage1: onyc
lineage2: noto
lineage3: anos
sequence type: prot
topology: 0
threshold: 0
out text file: ubx.rrt.txt
out table file: ubx.rrt.tsv
verbose: 1
