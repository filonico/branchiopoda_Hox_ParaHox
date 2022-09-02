library(tidyverse)
library(ggpubr)
library(scales)


#-----------------------INTERGENIC LENGTH BOXPLOT AND KW TEST----------------------#

#load data
branchio.intergenic.bed <- read.table("branchio.intergenic.length.tsv", header = F, sep = "\t")
branchio.intergenic.bed$V1 <- factor(branchio.intergenic.bed$V1, levels = c("Afr1",
                                                                            "Dmag","Dpul",
                                                                            "Etex",
                                                                            "Lapu","Lart","Lcou",
                                                                            "Tlon","Tcit","Tces"))
#plot data
intergenic.plot <- ggplot(data = branchio.intergenic.bed, aes(V1,V2,
                                                              fill = "#184e77", 
                                                              color = "#184e77")) +
  geom_boxplot(lwd = 0.9) +
  scale_fill_manual(values = alpha("#184e77", 0.7)) +
  scale_color_manual(values = "#184e77") +
  xlab("Species") +
  ylab("Intergenic region length (kbp)") +
  scale_y_continuous(labels = unit_format(accuracy = 1, unit = NULL, scale = 1e-3)) +
  theme_light() +
  theme(legend.position = "none")

#linear regression
intergenic.lm <- lm(V2 ~ V1, data = branchio.intergenic.bed)

#Shapiro test for normality of data
qqnorm(resid(intergenic.lm))
shapiro.test(resid(intergenic.lm))

#Kruskal-Wallis test
kruskal.test(branchio.intergenic.bed$V2, branchio.intergenic.bed$V1)


 
#------------------------INTRON LENGTH BOXPLOT AND KW TEST-------------------------#

#load data
branchio.intron.bed <- read.table("branchio.intron.length.tsv", header = F, sep = "\t")
branchio.intron.bed$V1 <- factor(branchio.intron.bed$V1, levels = c("Afr1",
                                                                    "Dmag","Dpul",
                                                                    "Etex","Ldah",
                                                                    "Lubb","Lapu","Lart","Lcou",
                                                                    "Tlon","Tcit","Tces"))
#plot data
intron.plot <- ggplot(branchio.intron.bed, aes(V1, V2,
                                               fill = "#184e77",
                                               color = "#184e77")) +
  geom_boxplot(lwd = 0.9) +
  scale_fill_manual(values = alpha("#184e77", 0.7)) +
  scale_color_manual(values = "#184e77") +
  scale_y_continuous(labels = unit_format(accuracy = 1, unit = NULL, scale = 1e-3)) +
  xlab("Species") +
  ylab("Intron length (kbp)") +
  theme_light() +
  theme(legend.position = "none")

#linear regression
intron.lm <- lm(V2 ~ V1, data = branchio.intron.bed)

#Shapiro test for normality of data
qqnorm(resid(intron.lm))
shapiro.test(resid(intron.lm))

#Kruskal-Wallis test
kruskal.test(branchio.intron.bed$V2, branchio.intron.bed$V1)

#Wilcoxon test for testing group effect
pairwise.wilcox.test(branchio.intron.bed$V2, branchio.intron.bed$V1,
                     p.adjust.method = "bonferroni")



#------------------------------CLUSTER LENGTH BARPLOT------------------------------#

#load data
branchio.cluster.bed <- read.table("branchio.cluster.length.tsv", header = F, sep = "\t")
branchio.cluster.bed$V1 <- factor(branchio.cluster.bed$V1, levels = c("Dmag", "Dpul",
                                                                  "Etex",
                                                                  "Lapu", "Lapu merged",
                                                                  "Lart", "Lart merged",
                                                                  "Tlon", "Tlon merged"))
#plot data
cluster.plot <- ggplot(branchio.cluster.bed, aes(V1, V2, label = V4)) +
  geom_bar(position = "stack", stat = "identity", lwd = 0.8,
           fill = alpha("#184e77", 0.7), col = "#184e77") +
  geom_text(position = "stack", vjust = -0.5, fontface = "bold") +
  scale_y_continuous(labels = unit_format(accuracy = 1, unit = NULL, scale = 1e-3), limits = c(0,700000)) +
  xlab("Species") +
  ylab("Cluster length (kbp)") +
  labs(fill = "Total length of:", col = "Total length of:") +
  theme_light() +
  theme(legend.position = "none")


#------------------------------GENOME/CLUSTER CORRELATION--------------------------#

#load data
correlation <- read.table("genome_cluster_corr.tsv", header = TRUE, row.names = 1, sep = "\t")

#linear regression
mod <- lm(cluster.length ~ genome.size, data = correlation)

#plot regression
lm.plot <- ggplot(correlation, aes(genome.size, cluster.length, label = row.names(correlation))) +
  geom_smooth(method = "lm", se = FALSE, color = "#52b69a") +
  geom_point(shape = 21, size = 2, fill = alpha("#184e77", 0.7), col = "#184e77") +
  geom_text(vjust = -1, col = "#4d4d4d") +
  geom_text(x = 0.25, y = 370, label = "y = 10.4x + 330.0", col = "#4d4d4d") +
  geom_text(x = 0.25, y = 365, label = "r2 = 0.0019", col = "#4d4d4d") +
  ylab("Cluster length (kbp)") +
  xlab("C-value (aploid, pg)") +
  ylim(300,380) +
  theme_light()



#------------------------------ASSEMBLE THE PANEL----------------------------------#

ggarrange(intergenic.plot, intron.plot, cluster.plot, lm.plot,
          ncol = 2,
          nrow = 2,
          labels = c("A", "B", "C", "D"))