# automatically generated command file for RRTree

file of aligned sequences: scr.aligned.twogroups.nogaps.faa
format: fasta
lineages: 2

#lineage affectation of sequences
Dmag_XP.032785567.1_scr: 1
Dpul_EFX86806.1_scr: 1
Fcan_XP.021951280.1_scr: 0
Lapu_g211.t1_scr: 2
Lubb_g3227.t1_scr: 2
Tita_g729.t1_scr: 2
Lart_12_scr: 2
Lcou_12_scr: 2
Tlon_12_scr: 2
Tusa_12_scr: 2

#lineage names
outgroup: hexa
lineage1: daphnia
lineage2: noto
sequence type: prot
topology: 0
threshold: 0
out text file: scr.rrt.txt
out table file: scr.rrt.tsv
verbose: 1
