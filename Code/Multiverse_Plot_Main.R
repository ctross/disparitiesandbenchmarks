 
 
  df_all_unA <- rbind(df_noneX_all_2015,df_noneX_all_2016,df_noneX_gun_2015,df_noneX_gun_2016,df_noneX_noag_2015,df_noneX_noag_2016)
  df_all_A <-   rbind(df_noneXa_all_2015,df_noneXa_all_2016,df_noneXa_gun_2015,df_noneXa_gun_2016,df_noneXa_gunH_2015,df_noneXa_gunH_2016)
  
  df_all_unA$Arms <- "Unarmed"
  df_all_A$Arms <- "Armed"
  
  df_main <- rbind( df_all_unA,df_all_A)
  levels(df_main$Type) <- c("All killings",    "By gunshot",      "Not agressing",   "Holding firearm")
 
 pp <-  ggplot(df_main, aes(x=R_P, y=as.factor(Type), fill=factor(Year), color=factor(Year))) + 
stat_density_ridges(quantile_lines = TRUE, quantiles = c(0.05, 0.95), alpha = 0.6,vline_size = 1.5,scale = 1)+
#stat_density_ridges(geom = "density_ridges_gradient", calc_ecdf = TRUE, quantiles = c(0.05, 0.95)) +
scale_fill_manual(values = c("#046C9A", "#D69C4E")) +
scale_color_manual(values = c("#046C9A", "#D69C4E")) +
geom_vline(xintercept = 0, linetype="dashed", color = "darkred", size=1) +
  facet_grid(.~Arms, scales = "free") + labs(x="Log of population-benchmarked relative risk", y=" ") +
   theme(text = element_text(size = 16)) + theme(axis.title=element_text(face="bold"),  strip.text = element_text(
        size = 16)) + theme(legend.position = "none") 
        
  ggsave("Main_Multiverse.png",pp,height=4, width=12, device="png")         
        