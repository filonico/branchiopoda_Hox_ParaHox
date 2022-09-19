# automatically generated command file for RRTree

file of aligned sequences: ftz.aligned.twogroups.nogaps.faa
format: fasta
lineages: 2

#lineage affectation of sequences
Dmag_XP.032785568.1_ftz: 1
Dpul_EFX86805.1_ftz: 1
Fcan_XP.021951322.2_ftz: 0
Lapu_g210.t1_ftz: 2
Lubb_g3887.t1_ftz: 2
Tita_g728.t1_ftz: 2
Tlon_g1069.t1_ftz: 2
Tusa_g802.t1_ftz: 2
Lart_08_ftz: 2
Lcou_08_ftz: 2

#lineage names
outgroup: hexa
lineage1: daphnia
lineage2: noto
sequence type: prot
topology: 0
threshold: 0
out text file: ftz.rrt.txt
out table file: ftz.rrt.tsv
verbose: 1
