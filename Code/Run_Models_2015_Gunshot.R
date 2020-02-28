


 dces <- read.csv("Data/CesarioEtAl2018Data.csv")
 
 dcrime <- read.csv("CrimeData_NCVS-NIBRS_Processed.csv") 
 
 d <- read.csv("ShootingData_Gaurdian_Processed.csv")
 d <- d[which(d$Outcome=="Unarmed"),] 

######################### NCVS
model_dat <- list(
 B_S = d$Killed[which(d$Year==2015 & d$Type=="By gunshot" & d$Race=="Black")],
 W_S = d$Killed[which(d$Year==2015 & d$Type=="By gunshot" & d$Race=="White")],
 B_P = dces$Black2015[20],
 W_P = dces$White2015[20],
 B_C = dcrime$Count[which(dcrime$Year==2015 & dcrime$Type=="Minor crimes" & dcrime$Race=="Black" & dcrime$Weighting=="NCVS_Weighted" )],
 W_C = dcrime$Count[which(dcrime$Year==2015 & dcrime$Type=="Minor crimes" & dcrime$Race=="White" & dcrime$Weighting=="NCVS_Weighted" )]
)

m_minor_ncvs_2015 <- stan(file="Code/Shootings_Model.stan", data=model_dat, refresh=100, chains=nchains, iter=iter, warmup=warmup, 
                          control=list(adapt_delta=delta, max_treedepth=mtd))

model_dat <- list(
 B_S = d$Killed[which(d$Year==2015 & d$Type=="By gunshot" & d$Race=="Black")],
 W_S = d$Killed[which(d$Year==2015 & d$Type=="By gunshot" & d$Race=="White")],
 B_P = dces$Black2015[20],
 W_P = dces$White2015[20],
 B_C = dcrime$Count[which(dcrime$Year==2015 & dcrime$Type=="Major crimes" & dcrime$Race=="Black" & dcrime$Weighting=="NCVS_Weighted" )],
 W_C = dcrime$Count[which(dcrime$Year==2015 & dcrime$Type=="Major crimes" & dcrime$Race=="White" & dcrime$Weighting=="NCVS_Weighted" )]
)

m_major_ncvs_2015 <- stan(file="Code/Shootings_Model.stan", data=model_dat, refresh=100, chains=nchains, iter=iter, warmup=warmup, 
                          control=list(adapt_delta=delta, max_treedepth=mtd))
                          
model_dat <- list(
 B_S = d$Killed[which(d$Year==2015 & d$Type=="By gunshot" & d$Race=="Black")],
 W_S = d$Killed[which(d$Year==2015 & d$Type=="By gunshot" & d$Race=="White")],
 B_P = dces$Black2015[20],
 W_P = dces$White2015[20],
 B_C = dcrime$Count[which(dcrime$Year==2015 & dcrime$Type=="Weapons crimes" & dcrime$Race=="Black" & dcrime$Weighting=="NCVS_Weighted" )],
 W_C = dcrime$Count[which(dcrime$Year==2015 & dcrime$Type=="Weapons crimes" & dcrime$Race=="White" & dcrime$Weighting=="NCVS_Weighted" )]
)

m_weapons_ncvs_2015 <- stan(file="Code/Shootings_Model.stan", data=model_dat, refresh=100, chains=nchains, iter=iter, warmup=warmup, 
                          control=list(adapt_delta=delta, max_treedepth=mtd))
                          
                          

######################### NIBRS reported
model_dat <- list(
 B_S = d$Killed[which(d$Year==2015 & d$Type=="By gunshot" & d$Race=="Black")],
 W_S = d$Killed[which(d$Year==2015 & d$Type=="By gunshot" & d$Race=="White")],
 B_P = dces$Black2015[20],
 W_P = dces$White2015[20],
 B_C = dcrime$Count[which(dcrime$Year==2015 & dcrime$Type=="Minor crimes" & dcrime$Race=="Black" & dcrime$Weighting=="NIBRS_Cesario" )],
 W_C = dcrime$Count[which(dcrime$Year==2015 & dcrime$Type=="Minor crimes" & dcrime$Race=="White" & dcrime$Weighting=="NIBRS_Cesario" )]
)

m_minor_nibrs_2015 <- stan(file="Code/Shootings_Model.stan", data=model_dat, refresh=100, chains=nchains, iter=iter, warmup=warmup, 
                          control=list(adapt_delta=delta, max_treedepth=mtd))

model_dat <- list(
 B_S = d$Killed[which(d$Year==2015 & d$Type=="By gunshot" & d$Race=="Black")],
 W_S = d$Killed[which(d$Year==2015 & d$Type=="By gunshot" & d$Race=="White")],
 B_P = dces$Black2015[20],
 W_P = dces$White2015[20],
 B_C = dcrime$Count[which(dcrime$Year==2015 & dcrime$Type=="Major crimes" & dcrime$Race=="Black" & dcrime$Weighting=="NIBRS_Cesario" )],
 W_C = dcrime$Count[which(dcrime$Year==2015 & dcrime$Type=="Major crimes" & dcrime$Race=="White" & dcrime$Weighting=="NIBRS_Cesario" )]
)

m_major_nibrs_2015 <- stan(file="Code/Shootings_Model.stan", data=model_dat, refresh=100, chains=nchains, iter=iter, warmup=warmup, 
                          control=list(adapt_delta=delta, max_treedepth=mtd))
                          
model_dat <- list(
 B_S = d$Killed[which(d$Year==2015 & d$Type=="By gunshot" & d$Race=="Black")],
 W_S = d$Killed[which(d$Year==2015 & d$Type=="By gunshot" & d$Race=="White")],
 B_P = dces$Black2015[20],
 W_P = dces$White2015[20],
 B_C = dcrime$Count[which(dcrime$Year==2015 & dcrime$Type=="Weapons crimes" & dcrime$Race=="Black" & dcrime$Weighting=="NIBRS_Cesario" )],
 W_C = dcrime$Count[which(dcrime$Year==2015 & dcrime$Type=="Weapons crimes" & dcrime$Race=="White" & dcrime$Weighting=="NIBRS_Cesario" )]
)

m_weapons_nibrs_2015 <- stan(file="Code/Shootings_Model.stan", data=model_dat, refresh=100, chains=nchains, iter=iter, warmup=warmup, 
                          control=list(adapt_delta=delta, max_treedepth=mtd))
                                                                              
                          
######################### NIBRS arrested
model_dat <- list(
 B_S = d$Killed[which(d$Year==2015 & d$Type=="By gunshot" & d$Race=="Black")],
 W_S = d$Killed[which(d$Year==2015 & d$Type=="By gunshot" & d$Race=="White")],
 B_P = dces$Black2015[20],
 W_P = dces$White2015[20],
 B_C = dcrime$Count[which(dcrime$Year==2015 & dcrime$Type=="Minor crimes" & dcrime$Race=="Black" & dcrime$Weighting=="NIBRS_Arrest_Cesario" )],
 W_C = dcrime$Count[which(dcrime$Year==2015 & dcrime$Type=="Minor crimes" & dcrime$Race=="White" & dcrime$Weighting=="NIBRS_Arrest_Cesario" )]
)

m_minor_nibrsa_2015 <- stan(file="Code/Shootings_Model.stan", data=model_dat, refresh=100, chains=nchains, iter=iter, warmup=warmup, 
                          control=list(adapt_delta=delta, max_treedepth=mtd))

model_dat <- list(
 B_S = d$Killed[which(d$Year==2015 & d$Type=="By gunshot" & d$Race=="Black")],
 W_S = d$Killed[which(d$Year==2015 & d$Type=="By gunshot" & d$Race=="White")],
 B_P = dces$Black2015[20],
 W_P = dces$White2015[20],
 B_C = dcrime$Count[which(dcrime$Year==2015 & dcrime$Type=="Major crimes" & dcrime$Race=="Black" & dcrime$Weighting=="NIBRS_Arrest_Cesario" )],
 W_C = dcrime$Count[which(dcrime$Year==2015 & dcrime$Type=="Major crimes" & dcrime$Race=="White" & dcrime$Weighting=="NIBRS_Arrest_Cesario" )]
)

m_major_nibrsa_2015 <- stan(file="Code/Shootings_Model.stan", data=model_dat, refresh=100, chains=nchains, iter=iter, warmup=warmup, 
                          control=list(adapt_delta=delta, max_treedepth=mtd))
                          
model_dat <- list(
 B_S = d$Killed[which(d$Year==2015 & d$Type=="By gunshot" & d$Race=="Black")],
 W_S = d$Killed[which(d$Year==2015 & d$Type=="By gunshot" & d$Race=="White")],
 B_P = dces$Black2015[20],
 W_P = dces$White2015[20],
 B_C = dcrime$Count[which(dcrime$Year==2015 & dcrime$Type=="Weapons crimes" & dcrime$Race=="Black" & dcrime$Weighting=="NIBRS_Arrest_Cesario" )],
 W_C = dcrime$Count[which(dcrime$Year==2015 & dcrime$Type=="Weapons crimes" & dcrime$Race=="White" & dcrime$Weighting=="NIBRS_Arrest_Cesario" )]
)

m_weapons_nibrsa_2015 <- stan(file="Code/Shootings_Model.stan", data=model_dat, refresh=100, chains=nchains, iter=iter, warmup=warmup, 
                          control=list(adapt_delta=delta, max_treedepth=mtd))
                               
                          
 df_minor_ncvs_2015 <- data.frame(R=rstan::extract(m_minor_ncvs_2015,pars="R_PA"),Year=2015, Type="By Gunshot",Crime="Minor",Source="NCVS")
 df_major_ncvs_2015 <- data.frame(R=rstan::extract(m_major_ncvs_2015,pars="R_PA"),Year=2015, Type="By Gunshot",Crime="Major",Source="NCVS") 
 df_weapons_ncvs_2015 <- data.frame(R=rstan::extract(m_weapons_ncvs_2015,pars="R_PA"),Year=2015, Type="By Gunshot",Crime="Weapons",Source="NCVS")  
                          
 df_minor_nibrs_2015 <- data.frame(R=rstan::extract(m_minor_nibrs_2015,pars="R_PA"),Year=2015, Type="By Gunshot",Crime="Minor",Source="NIBRS")
 df_major_nibrs_2015 <- data.frame(R=rstan::extract(m_major_nibrs_2015,pars="R_PA"),Year=2015, Type="By Gunshot",Crime="Major",Source="NIBRS") 
 df_weapons_nibrs_2015 <- data.frame(R=rstan::extract(m_weapons_nibrs_2015,pars="R_PA"),Year=2015, Type="By Gunshot",Crime="Weapons",Source="NIBRS") 
 
 df_minor_nibrsa_2015 <- data.frame(R=rstan::extract(m_minor_nibrsa_2015,pars="R_PA"),Year=2015, Type="By Gunshot",Crime="Minor",Source="NIBRS_Arrest")
 df_major_nibrsa_2015 <- data.frame(R=rstan::extract(m_major_nibrsa_2015,pars="R_PA"),Year=2015, Type="By Gunshot",Crime="Major",Source="NIBRS_Arrest") 
 df_weapons_nibrsa_2015 <- data.frame(R=rstan::extract(m_weapons_nibrsa_2015,pars="R_PA"),Year=2015, Type="By Gunshot",Crime="Weapons",Source="NIBRS_Arrest")
                            
 df_2015_bygunshot <- rbind(df_minor_ncvs_2015,df_major_ncvs_2015,df_weapons_ncvs_2015,                         
                      df_minor_nibrs_2015,df_major_nibrs_2015,df_weapons_nibrs_2015,    
                      df_minor_nibrsa_2015,df_major_nibrsa_2015,df_weapons_nibrsa_2015)    
                          
   
  df_noneX_gun_2015 <- data.frame(R=rstan::extract(m_weapons_ncvs_2015,pars="R_P"),Year=2015, Type="By Gunshot",Crime="None",Source="NA")
        
        
        
                               
                          
                          
                          