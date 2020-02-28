 
 
  df_all <- rbind(df_2015_all, df_2016_all,df_2015_bygunshot, df_2016_bygunshot,df_2015_noag, df_2016_noag)
  
  levels(df_all$Source) <- c("NCVS (Reports)","NIBRS (Reports)","NIBRS (Arrests)")
  levels(df_all$Crime) <- c("Violent crimes (Less severe)", "Violent crimes (More severe)", "Weapons violations")
  levels(df_all$Type) <- c("All killings",    "By gunshot",      "Not agressing")
 
 pp <-  ggplot(df_all, aes(x=R_PA, y=as.factor(Type), fill=factor(Year), color=factor(Year))) + 
stat_density_ridges(quantile_lines = TRUE, quantiles = c(0.05, 0.95), alpha = 0.6,vline_size = 1.5,scale = 1)+
#stat_density_ridges(geom = "density_ridges_gradient", calc_ecdf = TRUE, quantiles = c(0.05, 0.95)) +
scale_fill_manual(values = c("#046C9A", "#D69C4E")) +
scale_color_manual(values = c("#046C9A", "#D69C4E")) +
geom_vline(xintercept = 0, linetype="dashed", color = "darkred", size=1) +
  facet_grid(Source~Crime, scales = "free") + labs(x="Log of crime-benchmarked relative risk", y=" ") +
   theme(text = element_text(size = 16)) + theme(axis.title=element_text(face="bold"),  strip.text = element_text(
        size = 16)) + theme(legend.position = "none") 
        
  ggsave("Unarmed_Multiverse.png",pp,height=8, width=12, device="png")      
        