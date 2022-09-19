# automatically generated command file for RRTree

file of aligned sequences: cad.aligned.EtexLdah.nogaps.faa
format: fasta
lineages: 2

#lineage affectation of sequences
Etex_C0008.g151.t2_cad: 1
Fcan_XP.035705838.1_cad: 0
Lapu_g7498.t1_cad: 2
Lart_g6847.t1_cad: 2
Lcou_g3926.t1_cad: 2
Ldah_g16475.t1_cad: 1
Lubb_g5810.t1_cad: 2
Tusa_g3522.t1_cad: 2
Tita_04_cad: 2
Tlon_04_cad: 2


#lineage names
outgroup: hexa
lineage1: spin
lineage2: noto
sequence type: prot
topology: 0
threshold: 0
out text file: cad.rrt.txt
out table file: cad.rrt.tsv
verbose: 1
