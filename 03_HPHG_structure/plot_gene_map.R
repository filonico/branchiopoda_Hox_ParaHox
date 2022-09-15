library(genoPlotR)
library(ggplot2)

#---------------afr1------------------------------------

afr1_df <- read.table("afr1_seg.txt", header = T, sep = "\t")
afr1_seg <- as.dna_seg(afr1_df,
                       col = afr1_df$fill,
                       lwd = 3,
                       fill = afr1_seg$fill,
                       gene_type = "blocks")


#---------------dmag------------------------------------

dmag_df <- read.table("dmag_seg.txt", header = T, sep = "\t")
dmag_seg <- as.dna_seg(dmag_df,
                       col = dmag_df$fill,
                       lwd = 3,
                       fill = dmag_seg$fill,
                       gene_type = "blocks")


#---------------dpul------------------------------------

dpul_df <- read.table("dpul_seg.txt", header = T, sep = "\t")
dpul_seg <- as.dna_seg(dpul_df,
                       col = dpul_df$fill,
                       fill = dpul_df$fill,
                       lwd = 3,
                       gene_type = "blocks")


#---------------ldah------------------------------------

ldah_df <- read.table("ldah_seg.txt", header = T, sep = "\t")
ldah_seg <- as.dna_seg(ldah_df,
                       col = ldah_df$fill,
                       fill = ldah_df$fill,
                       lwd = 3,
                       gene_type = "blocks")


#---------------etex------------------------------------

etex_df <- read.table("etex_seg.txt", header = T, sep = "\t")
etex_seg <- as.dna_seg(etex_df,
                       col = etex_df$fill,
                       fill = etex_df$fill,
                       lwd = 3,
                       gene_type = "blocks")


#---------------lubb------------------------------------

lubb_df <- read.table("lubb_seg.txt", header = T, sep = "\t")
lubb_seg <- as.dna_seg(lubb_df,
                       col = lubb_df$fill,
                       fill = lubb_df$fill,
                       lwd = 3,
                       gene_type = "blocks")


#---------------lapu------------------------------------

lapu_df <- read.table("lapu_seg.txt", header = T, sep = "\t")
lapu_seg <- as.dna_seg(lapu_df,
                       col = lapu_df$fill,
                       fill = lapu_df$fill,
                       lwd = 3,
                       gene_type = "blocks")



#---------------lart------------------------------------

lart_df <- read.table("lart_seg.txt", header = T, sep = "\t")
lart_seg <- as.dna_seg(lart_df,
                       col = lart_df$fill,
                       lwd = 3,
                       fill = lart_df$fill,
                       gene_type = "blocks")


#---------------lcou------------------------------------

lcou_df <- read.table("lcou_seg.txt", header = T, sep = "\t")
lcou_seg <- as.dna_seg(lcou_df,
                       col = lcou_df$fill,
                       lwd = 3,
                       fill = lcou_df$fill,
                       gene_type = "blocks")


#---------------tlon------------------------------------

tlon_df <- read.table("tlon_seg.txt", header=T, sep="\t")
tlon_seg <- as.dna_seg(tlon_df,
                       col = tlon_df$fill,
                       lwd = 3,
                       fill = tlon_df$fill,
                       gene_type = "blocks")



#---------------Tces------------------------------------

Tces_df <- read.table("Tces_seg.txt", header=T, sep="\t")
Tces_seg <- as.dna_seg(Tces_df,
                       col = Tces_df$fill,
                       lwd = 3,
                       fill = Tces_df$fill,
                       gene_type = "blocks")


#---------------Tcit------------------------------------

Tcit_df <- read.table("Tcit_seg.txt", header=T, sep="\t")
Tcit_seg <- as.dna_seg(Tcit_df,
                       col = Tcit_df$fill,
                       lwd = 3,
                       fill = Tcit_df$fill,
                       gene_type = "blocks")


#---------------GRAPH------------------------------------

tree <- newick2phylog("(Afr1:9,(((Dmag:1,Dpul:1):2,(Ldah:1,Etex:1):2):5,(((Lubb:4,(Lapu:3,(Lart:1,Lcou:1):2):1):2,(Tlon:2,(Tces:1,Tcit:1):1):4):1):1):1);")

plot_gene_map(dna_segs = list(afr1_seg,
                              dmag_seg, dpul_seg,
                              ldah_seg, etex_seg,
                              lubb_seg, lapu_seg, lart_seg, lcou_seg,
                              tlon_seg, Tces_seg, Tcit_seg),
              dna_seg_labels = c("Afr1","Dmag","Dpul","Ldah","Etex","Lubb","Lapu","Lart","Lcou","Tlon","Tces","Tcit"),
              dna_seg_line = "#9F9F9F",
              xlims = list(c(1,57318,57319,347113,347115,400705,400707,400887,400888,400978,400979,401159,401160,401340,401341,401521), #Afr1
                           c(8320746,8005923,7411120,7410940), #Dmag
                           c(215158,549487,1220067,1219887), #Dpul
                           c(285,465,1877,2057,6872,7052,11637,26506,32007,32187,35289,54635,55624,55804,67498,97107,97320,97500,98064,98244), #Ldah
                           c(5047965,4962074,3717733,3971746,1011077,1011257), #Etex
                           c(1,181,191,371,381,561,571,6031,6041,6221,6231,6411,6421,6601,6611,6791,6801,6981,6991,7171,7181,7361), #Lubb
                           c(403470,428358,304687,28676,20194,20374), #Lapu
                           c(-26920,-3176,6729,279214,287680,287860), #Lart
                           c(8140,26744,102460,29406,113893,183686,192119,192299,200823,201003), #Lcou
                           c(674759,646791,632191,290104,286374,286554), #Tlon
                           c(4491,4671,9455,9635,241043,9928,246084,246264,249676,249856), #Tces
                           c(3745,3925,14786,14966,131840,24278,133670,133850,139784,280547,283965,284145) #Tcit
                           ),
              tree = tree)