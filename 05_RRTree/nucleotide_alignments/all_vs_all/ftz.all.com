# automatically generated command file for RRTree

file of aligned sequences: ftz.withEtexAntp.aligned.nogaps.fna
format: fasta
lineages: 3

#lineage affectation of sequences
Dmag_XP.032785568.1_ftz: 1
Dpul_EFX86805.1_ftz: 1
Fcan_XP.021951322.2_ftz: 0
Lapu_g210.t1_ftz: 2
Ldah_g14037.t1_ftz: 1
Ldah_g1519.t1_ftz: 1
Etex_C0007.g24.t1_ftz: 1
Lubb_g3887.t1_ftz: 2
Tces_g728.t1_ftz: 2
Tlon_g1069.t1_ftz: 2
Tcit_g802.t1_ftz: 2
Lart_08_ftz: 2
Lcou_08_ftz: 2
Afr1_17267_ftz: 3

#lineage names
outgroup: hexa
lineage1: onyc
lineage2: noto
lineage3: anos
sequence type: nc
topology: 0
threshold: 0
out text file: ftz.rrt.txt
out table file: ftz.rrt.tsv
distance: k2
verbose: 0
