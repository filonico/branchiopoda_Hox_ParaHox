library(ggmsa)
library(scales)
library(ggpubr)

#paths to MSAs
ftz.msa <- "path/to/ftz.HD.aligned.faa"
antp.msa <- "path/to/antp.HD.aligned.faa"

#generate palette scheme
msa_palette <- data.frame(names = c(LETTERS[1:26],"-"),
                          color = c(viridis_pal(alpha = NULL)(26),"#FFFFFF"),
                          stringsAsFactors = FALSE)

#plot MSAs
ftz.plot <- ggmsa(ftz.msa, custom_color = msa_palette, char_width = 0.5, seq_name = TRUE, border = "white") +
  geom_seqlogo(custom_color = msa_palette) +
  ylab("Sequence")

antp.plot <- ggmsa(antp.msa, custom_color = msa_palette, char_width = 0.5, seq_name = TRUE, border = "white") +
  geom_seqlogo(custom_color = msa_palette) +
  xlab("Position") +
  ylab("Sequence")

panel <- ggarrange(ftz.plot, antp.plot, nrow = 2, labels = c("A) ftz", "B) antp"))

ggsave("suppl_figure_S2.pdf", plot = panel, device = "pdf",
       width = 11.69, height = 8.27, units = "in")
