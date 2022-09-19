# automatically generated command file for RRTree

file of aligned sequences: antp.aligned.EtexLdah.nogaps.faa
format: fasta
lineages: 2

#lineage affectation of sequences
Etex_C0002.g604.t2_antp: 1
Fcan_XP.021952588.1_antp: 0
Lapu_g209.t1_antp: 2
Lubb_g13749.t1_antp: 2
Tita_g727.t1_antp: 2
Tlon_g1068.t1_antp: 2
Tusa_g801.t1_antp: 2
Lart_03_antp: 2
Lcou_04_antp: 2

#lineage names
outgroup: hexa
lineage1: spin
lineage2: noto
sequence type: prot
topology: 0
threshold: 0
out text file: antp.rrt.txt
out table file: antp.rrt.tsv
verbose: 1
