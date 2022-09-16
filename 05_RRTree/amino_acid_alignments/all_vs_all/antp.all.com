# automatically generated command file for RRTree

file of aligned sequences: antp.aligned.all.nogaps.faa
format: fasta
lineages: 3

#lineage affectation of sequences
Dmag_XP.032785563.1_antp: 1
Dpul_EFX86804.1_antp: 1
Etex_C0002.g604.t2_antp: 1
Fcan_XP.021952588.1_antp: 0
Lapu_g209.t1_antp: 2
Lubb_g13749.t1_antp: 2
Tita_g727.t1_antp: 2
Tlon_g1068.t1_antp: 2
Tusa_g801.t1_antp: 2
Lart_03_antp: 2
Lcou_04_antp: 2
Afr1_13755_antp: 3

#lineage names
outgroup: hexa
lineage1: onyc
lineage2: noto
lineage3: anos
sequence type: prot
topology: 0
threshold: 0
out text file: antp.rrt.txt
out table file: antp.rrt.tsv
verbose: 1
