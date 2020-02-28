 
  df_c2 <- df_c[which(df_c$Type=="NCVS vs. NIBRS (Reports)" | df_c$Type=="NCVS vs. NIBRS (Arrests)"),]
    levels(df_c2$Crime) <- c("Violent crimes (Less severe)", "Violent crimes (More severe)", "Weapons violations")
 pp <-  ggplot(df_c2, aes(x=R, y=as.factor(Type), fill=factor(Year), color=factor(Year))) + 
stat_density_ridges(quantile_lines = TRUE, quantiles = c(0.05, 0.95), alpha = 0.6,vline_size = 1.5,scale = 0.6)+
#stat_density_ridges(geom = "density_ridges_gradient", calc_ecdf = TRUE, quantiles = c(0.05, 0.95)) +
scale_fill_manual(values = c("#046C9A", "#D69C4E")) +
scale_color_manual(values = c("#046C9A", "#D69C4E")) +
geom_vline(xintercept = 0, linetype="dashed", color = "darkred", size=1) +
  facet_grid(.~Crime, scales = "free") + labs(x="Difference of log relative crime rates", y=" ") +
   theme(text = element_text(size = 16)) + theme(axis.title=element_text(face="bold"),  strip.text = element_text(
        size = 16)) + theme(legend.position = "none") 
        
  ggsave("Crime_Multiverse.png",pp,height=4, width=12, device="png")         
        