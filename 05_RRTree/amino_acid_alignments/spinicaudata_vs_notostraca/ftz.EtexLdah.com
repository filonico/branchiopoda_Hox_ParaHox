# automatically generated command file for RRTree

file of aligned sequences: ftz.Etex.g24.t1.aligned.nogaps.EtexLdah.faa
format: fasta
lineages: 2

#lineage affectation of sequences
Fcan_XP.021951322.2_ftz: 0
Etex_C0007.g24.t1_antp: 1
Lapu_g210.t1_ftz: 2
Ldah_g14037.t1_ftz: 1
Ldah_g1519.t1_ftz: 1
Lubb_g11199.t1_ftz: 2
Tita_g728.t1_ftz: 2
Tlon_g1069.t1_ftz: 2
Tusa_g802.t1_ftz: 2
Lart_08_ftz: 2
Lcou_08_ftz: 2

#lineage names
outgroup: hexa
lineage1: spin
lineage2: noto
sequence type: prot
topology: 0
threshold: 0
out text file: ftz.rrt.EtexLdah.txt
out table file: ftz.rrt.EtexLdah.tsv
verbose: 1
