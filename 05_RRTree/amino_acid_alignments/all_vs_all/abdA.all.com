# automatically generated command file for RRTree

file of aligned sequences: abdA.aligned.nogaps.faa
format: fasta
lineages: 3

#lineage affectation of sequences
Dmag_XP.032785543.1_abdA: 1
Dpul_EFX86800.1_abdA: 1
Etex_C0002.g612.t1_abdA: 1
Fcan_XP.035706584.1_abdA: 0
Lapu_g207.t1_abdA: 2
Ldah_g3248.t1_abdA: 1
Lubb_g13869.t1_abdA: 2
Tita_g723.t1_abdA: 2
Tlon_g1065.t1_abdA: 2
Tusa_g509.t1_abdA: 2
Lart_01_abdA: 2
Lcou_01_abdA: 2
Afr1_01483_abdA: 3

#lineage names
outgroup: hexa
lineage1: onyc
lineage2: noto
lineage3: anos
sequence type: prot
topology: 0
threshold: 0
out text file: abdA.rrt.txt
out table file: abdA.rrt.tsv
verbose: 1
