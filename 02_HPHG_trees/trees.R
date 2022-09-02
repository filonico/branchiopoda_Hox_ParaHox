library(ggtree)
library(phytools)
library(tidyverse)
library(ggpubr)

#--------------------------------LAB TREE--------------------------------#

lab_newick <- read.tree(file = "lab.nt.newick")
lab_tree <- ggtree(lab_newick) +
  geom_tiplab(size = 2, fontface = 2, offset = 0.5) +
  geom_rootedge(0) +
  geom_nodelab(size = 2, hjust = 1.35, vjust = 1.35) +
  geom_cladelab(node = 24, label = "Notostraca",
                fontsize = 2, hjust = "centre", angle = 270, offset.text = 0.9,
                align = TRUE,  offset = 24,
                barcolor = "#adb5bd", textcolor = "#adb5bd", barsize = 0.6) +
  geom_cladelab(node = 21, label = "Cladocera",
                fontsize = 2, hjust = "centre", angle = 270, offset.text = 0.9,
                align = TRUE,  offset = 24,
                barcolor = "#adb5bd", textcolor = "#adb5bd", barsize = 0.6)


#---------------------------------PB TREE--------------------------------#

pb_newick <- read.tree(file = "pb.nt.newick")
pb_tree <- ggtree(pb_newick) +
  geom_tiplab(size = 2, fontface = 2, offset = 0.3) +
  geom_rootedge(0) +
  geom_nodelab(size = 2, hjust = 1.35, vjust = 1.35) +
  geom_cladelab(node = 20, label = "Notostraca",
                fontsize = 2, hjust = "centre", angle = 270, offset.text = 0.3,
                align = TRUE,  offset = 7,
                barcolor = "#adb5bd", textcolor = "#adb5bd", barsize = 0.6) +
  geom_cladelab(node = 19, label = "Cl.",
                fontsize = 2, hjust = "centre", angle = 270, offset.text = 0.3,
                align = TRUE,  offset = 7,
                barcolor = "#adb5bd", textcolor = "#adb5bd", barsize = 0.6) +
  geom_cladelab(node = 18, label = "Sp.",
                fontsize = 2, hjust = "centre", angle = 270, offset.text = 0.3,
                align = TRUE,  offset = 7,
                barcolor = "#adb5bd", textcolor = "#adb5bd", barsize = 0.6) +
  geom_cladelab(node = 17, label = "Onychocaudata",
                fontsize = 2, hjust = "centre", angle = 270, offset.text = 0.3,
                align = TRUE,  offset = 8,
                barcolor = "#adb5bd", textcolor = "#adb5bd", barsize = 0.6) +
  geom_cladelab(node = 16, label = "Phyllopoda",
                fontsize = 2, hjust = "centre", angle = 270, offset.text = 0.3,
                align = TRUE,  offset = 9,
                barcolor = "#adb5bd", textcolor = "#adb5bd", barsize = 0.6)


#--------------------------------HOX3 TREE-------------------------------#

hox3_newick <- read.tree(file = "hox3.nt.newick")
hox3_tree <- ggtree(hox3_newick) +
  geom_tiplab(size = 2, fontface = 2, offset = 0.2) +
  geom_rootedge(0) +
  geom_nodelab(size = 2, hjust = 1.35, vjust = 1.35) +
  geom_cladelab(node = 18, label = "Notostraca",
                fontsize = 2, hjust = "centre", angle = 270, offset.text = 0.1,
                align = TRUE,  offset = 3,
                barcolor = "#adb5bd", textcolor = "#adb5bd", barsize = 0.6) +
  geom_cladelab(node = 17, label = "Cladocera",
                fontsize = 2, hjust = "centre", angle = 270, offset.text = 0.1,
                align = TRUE,  offset = 3,
                barcolor = "#adb5bd", textcolor = "#adb5bd", barsize = 0.6)


#--------------------------------DFD TREE--------------------------------#

dfd_newick <- read.tree(file = "dfd.nt.newick")
dfd_tree <- ggtree(dfd_newick) +
  geom_tiplab(size = 2, fontface = 2, offset = 0.5) +
  geom_rootedge(0) +
  geom_nodelab(size = 2, hjust = 1.35, vjust = 1.35) +
  geom_cladelab(node = 24, label = "Notostraca",
                fontsize = 2, hjust = "centre", angle = 270, offset.text = 1,
                align = TRUE,  offset = 25,
                barcolor = "#adb5bd", textcolor = "#adb5bd", barsize = 0.6) +
  geom_cladelab(node = 21, label = "Cladocera",
                fontsize = 2, hjust = "centre", angle = 270, offset.text = 1,
                align = TRUE,  offset = 25,
                barcolor = "#adb5bd", textcolor = "#adb5bd", barsize = 0.6)


#--------------------------------SCR TREE--------------------------------#

scr_newick <- read.tree(file = "scr.nt.newick")
scr_tree <- ggtree(scr_newick) +
  geom_tiplab(size = 2, fontface = 2, offset = 0.5) +
  geom_rootedge(0) +
  geom_nodelab(size = 2, hjust = 1.35, vjust = 1.35) +
  geom_cladelab(node = 20, label = "Notostraca",
                fontsize = 2, hjust = "centre", angle = 270, offset.text = 0.7,
                align = TRUE,  offset = 27,
                barcolor = "#adb5bd", textcolor = "#adb5bd", barsize = 0.6) +
  geom_cladelab(node = 19, label = "Cladocera",
                fontsize = 2, hjust = "centre", angle = 270, offset.text = 0.7,
                align = TRUE,  offset = 27,
                barcolor = "#adb5bd", textcolor = "#adb5bd", barsize = 0.6)


#--------------------------------FTZ TREE--------------------------------#

ftz_newick <- read.tree(file = "ftz.nt.newick")
ftz_tree <- ggtree(ftz_newick) +
  geom_tiplab(size = 2, fontface = 2, offset = 0.05) +
  geom_rootedge(0) +
  geom_nodelab(size = 2, hjust = 1.35, vjust = 1.35) +
  geom_cladelab(node = 22, label = "Notostraca",
                fontsize = 2, hjust = "centre", angle = 270, offset.text = 0.05,
                align = TRUE,  offset = 1.3,
                barcolor = "#adb5bd", textcolor = "#adb5bd", barsize = 0.6) +
  geom_cladelab(node = 19, label = "Cl.",
                fontsize = 2, hjust = "centre", angle = 270, offset.text = 0.05,
                align = TRUE,  offset = 1.3,
                barcolor = "#adb5bd", textcolor = "#adb5bd", barsize = 0.6) +
  geom_cladelab(node = 20, label = "Sp.",
                fontsize = 2, hjust = "centre", angle = 270, offset.text = 0.05,
                align = TRUE,  offset = 1.3,
                barcolor = "#adb5bd", textcolor = "#adb5bd", barsize = 0.6) +
  geom_cladelab(node = 18, label = "Onychocaudata",
                fontsize = 2, hjust = "centre", angle = 270, offset.text = 0.05,
                align = TRUE,  offset = 1.5,
                barcolor = "#adb5bd", textcolor = "#adb5bd", barsize = 0.6) +
  geom_cladelab(node = 17, label = "Phyllopoda",
                fontsize = 2, hjust = "centre", angle = 270, offset.text = 0.05,
                align = TRUE,  offset = 1.7,
                barcolor = "#adb5bd", textcolor = "#adb5bd", barsize = 0.6)


#--------------------------------ANTP TREE--------------------------------#

antp_newick <- read.tree(file = "antp.nt.newick")
antp_tree <- ggtree(antp_newick) +
  geom_tiplab(size = 2, fontface = 2, offset = 0.5) +
  geom_rootedge(0) +
  geom_nodelab(size = 2, hjust = 1.35, vjust = 1.35) +
  geom_cladelab(node = 19, label = "Notostraca",
                fontsize = 2, hjust = "centre", angle = 270, offset.text = 0.5,
                align = TRUE,  offset = 20,
                barcolor = "#adb5bd", textcolor = "#adb5bd", barsize = 0.6) +
  geom_cladelab(node = 17, label = "Cladocera",
                fontsize = 2, hjust = "centre", angle = 270, offset.text = 0.5,
                align = TRUE,  offset = 20,
                barcolor = "#adb5bd", textcolor = "#adb5bd", barsize = 0.6)


#--------------------------------UBX TREE--------------------------------#

ubx_newick <- read.tree(file = "ubx.nt.newick")
ubx_tree <- ggtree(ubx_newick) +
  geom_tiplab(size = 2, fontface = 2, offset = 0.5) +
  geom_rootedge(0) +
  geom_nodelab(size = 2, hjust = 1.35, vjust = 1.35) +
  geom_cladelab(node = 18, label = "Notostraca",
                fontsize = 2, hjust = "centre", angle = 270, offset.text = 0.5,
                align = TRUE,  offset = 18,
                barcolor = "#adb5bd", textcolor = "#adb5bd", barsize = 0.6) +
  geom_cladelab(node = 16, label = "Cladocera",
                fontsize = 2, hjust = "centre", angle = 270, offset.text = 0.5,
                align = TRUE,  offset = 18,
                barcolor = "#adb5bd", textcolor = "#adb5bd", barsize = 0.6)


#--------------------------------ABDA TREE-------------------------------#

abdA_newick <- read.tree(file = "abdA.nt.newick")
abdA_tree <- ggtree(abdA_newick) +
  geom_tiplab(size = 2, fontface = 2, offset = 0.5) +
  geom_rootedge(0) +
  geom_nodelab(size = 2, hjust = 1.35, vjust = 1.35) +
  geom_cladelab(node = 20, label = "Notostraca",
                fontsize = 2, hjust = "centre", angle = 270, offset.text = 0.5,
                align = TRUE,  offset = 15,
                barcolor = "#adb5bd", textcolor = "#adb5bd", barsize = 0.6) +
  geom_cladelab(node = 17, label = "Cl.",
                fontsize = 2, hjust = "centre", angle = 270, offset.text = 0.5,
                align = TRUE,  offset = 15,
                barcolor = "#adb5bd", textcolor = "#adb5bd", barsize = 0.6) +
  geom_cladelab(node = 19, label = "Sp.",
                fontsize = 2, hjust = "centre", angle = 270, offset.text = 0.5,
                align = TRUE,  offset = 15,
                barcolor = "#adb5bd", textcolor = "#adb5bd", barsize = 0.6) +
  geom_cladelab(node = 16, label = "Phyllopoda",
                fontsize = 2, hjust = "centre", angle = 270, offset.text = 0.5,
                align = TRUE,  offset = 17,
                barcolor = "#adb5bd", textcolor = "#adb5bd", barsize = 0.6)


#--------------------------------ABDB TREE-------------------------------#

abdB_newick <- read.tree(file = "abdB.nt.newick")
abdB_tree <- ggtree(abdB_newick) +
  geom_tiplab(size = 2, fontface = 2, offset = 0.5) +
  geom_rootedge(0) +
  geom_nodelab(size = 2, hjust = 1.35, vjust = 1.35) +
  geom_cladelab(node = 20, label = "Notostraca",
                fontsize = 2, hjust = "centre", angle = 270, offset.text = 0.6,
                align = TRUE,  offset = 18,
                barcolor = "#adb5bd", textcolor = "#adb5bd", barsize = 0.6) +
  geom_cladelab(node = 18, label = "Cladocera",
                fontsize = 2, hjust = "centre", angle = 270, offset.text = 0.6,
                align = TRUE,  offset = 18,
                barcolor = "#adb5bd", textcolor = "#adb5bd", barsize = 0.6) +
  geom_cladelab(node = 16, label = "Phyllopoda",
                fontsize = 2, hjust = "centre", angle = 270, offset.text = 0.6,
                align = TRUE,  offset = 21,
                barcolor = "#adb5bd", textcolor = "#adb5bd", barsize = 0.6)


#--------------------------------CAD TREE--------------------------------#

cad_newick <- read.tree(file = "cad.nt.newick")
cad_tree <- ggtree(cad_newick) +
  geom_tiplab(size = 2, fontface = 2, offset = 0.5) +
  geom_rootedge(0) +
  geom_nodelab(size = 2, hjust = 1.35, vjust = 1.35) +
  geom_cladelab(node = 20, label = "Notostraca",
                fontsize = 2, hjust = "centre", angle = 270, offset.text = 0.6,
                align = TRUE,  offset = 18,
                barcolor = "#adb5bd", textcolor = "#adb5bd", barsize = 0.6) +
  geom_cladelab(node = 17, label = "Cl.",
                fontsize = 2, hjust = "centre", angle = 270, offset.text = 0.6,
                align = TRUE,  offset = 18,
                barcolor = "#adb5bd", textcolor = "#adb5bd", barsize = 0.6) +
  geom_cladelab(node = 19, label = "Sp.",
                fontsize = 2, hjust = "centre", angle = 270, offset.text = 0.6,
                align = TRUE,  offset = 18,
                barcolor = "#adb5bd", textcolor = "#adb5bd", barsize = 0.6) +
  geom_cladelab(node = 16, label = "Phyllopoda",
                fontsize = 2, hjust = "centre", angle = 270, offset.text = 0.6,
                align = TRUE,  offset = 21,
                barcolor = "#adb5bd", textcolor = "#adb5bd", barsize = 0.6)


#--------------------------------GENERATE PANEL--------------------------#

panel <- ggarrange(lab_tree, pb_tree, hox3_tree, dfd_tree, scr_tree, ftz_tree,
                   antp_tree, ubx_tree, abdA_tree, abdB_tree, cad_tree,
                   labels = c("lab","pb", "Hox3", "dfd", "scr", "ftz",
                              "antp", "ubx", "abd-A", "abd-B", "cad"),
                   hjust = 0,
                   ncol = 2,
                   nrow = 6)

ggsave("Figure_3.pdf", plot = panel, device = "pdf",
       width = 8.27, height = 11.69, units = "in")
