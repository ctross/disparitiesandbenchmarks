

 dces <- read.csv("Data/CesarioEtAl2018Data.csv")
 
 dcrime <- read.csv("CrimeData_NCVS-NIBRS_Processed.csv") 
 
 d <- read.csv("ShootingData_Gaurdian_Processed.csv")
 

######################### 2015
model_dat <- list(
 B_P = dces$Black2015[20],
 W_P = dces$White2015[20],
 B_C_1 = dcrime$Count[which(dcrime$Year==2015 & dcrime$Type=="Minor crimes" & dcrime$Race=="Black" & dcrime$Weighting=="NCVS_Weighted" )],
 W_C_1 = dcrime$Count[which(dcrime$Year==2015 & dcrime$Type=="Minor crimes" & dcrime$Race=="White" & dcrime$Weighting=="NCVS_Weighted" )],
 B_C_2 = dcrime$Count[which(dcrime$Year==2015 & dcrime$Type=="Minor crimes" & dcrime$Race=="Black" & dcrime$Weighting=="NIBRS_Cesario" )],
 W_C_2 = dcrime$Count[which(dcrime$Year==2015 & dcrime$Type=="Minor crimes" & dcrime$Race=="White" & dcrime$Weighting=="NIBRS_Cesario" )],
 B_C_3 = dcrime$Count[which(dcrime$Year==2015 & dcrime$Type=="Minor crimes" & dcrime$Race=="Black" & dcrime$Weighting=="NIBRS_Arrest_Cesario" )],
 W_C_3 = dcrime$Count[which(dcrime$Year==2015 & dcrime$Type=="Minor crimes" & dcrime$Race=="White" & dcrime$Weighting=="NIBRS_Arrest_Cesario" )]
)

c_minor_2015 <- stan(file="Code/Crime_Model.stan", data=model_dat, refresh=100, chains=nchains, iter=iter, warmup=warmup, control=list(adapt_delta=delta, max_treedepth=mtd))
          
model_dat <- list(
 B_P = dces$Black2015[20],
 W_P = dces$White2015[20],
 B_C_1 = dcrime$Count[which(dcrime$Year==2015 & dcrime$Type=="Major crimes" & dcrime$Race=="Black" & dcrime$Weighting=="NCVS_Weighted" )],
 W_C_1 = dcrime$Count[which(dcrime$Year==2015 & dcrime$Type=="Major crimes" & dcrime$Race=="White" & dcrime$Weighting=="NCVS_Weighted" )],
 B_C_2 = dcrime$Count[which(dcrime$Year==2015 & dcrime$Type=="Major crimes" & dcrime$Race=="Black" & dcrime$Weighting=="NIBRS_Cesario" )],
 W_C_2 = dcrime$Count[which(dcrime$Year==2015 & dcrime$Type=="Major crimes" & dcrime$Race=="White" & dcrime$Weighting=="NIBRS_Cesario" )],
 B_C_3 = dcrime$Count[which(dcrime$Year==2015 & dcrime$Type=="Major crimes" & dcrime$Race=="Black" & dcrime$Weighting=="NIBRS_Arrest_Cesario" )],
 W_C_3 = dcrime$Count[which(dcrime$Year==2015 & dcrime$Type=="Major crimes" & dcrime$Race=="White" & dcrime$Weighting=="NIBRS_Arrest_Cesario" )]
)

c_major_2015 <- stan(file="Code/Crime_Model.stan", data=model_dat, refresh=100, chains=nchains, iter=iter, warmup=warmup, control=list(adapt_delta=delta, max_treedepth=mtd))
                                    

model_dat <- list(
 B_P = dces$Black2015[20],
 W_P = dces$White2015[20],
 B_C_1 = dcrime$Count[which(dcrime$Year==2015 & dcrime$Type=="Weapons crimes" & dcrime$Race=="Black" & dcrime$Weighting=="NCVS_Weighted" )],
 W_C_1 = dcrime$Count[which(dcrime$Year==2015 & dcrime$Type=="Weapons crimes" & dcrime$Race=="White" & dcrime$Weighting=="NCVS_Weighted" )],
 B_C_2 = dcrime$Count[which(dcrime$Year==2015 & dcrime$Type=="Weapons crimes" & dcrime$Race=="Black" & dcrime$Weighting=="NIBRS_Cesario" )],
 W_C_2 = dcrime$Count[which(dcrime$Year==2015 & dcrime$Type=="Weapons crimes" & dcrime$Race=="White" & dcrime$Weighting=="NIBRS_Cesario" )],
 B_C_3 = dcrime$Count[which(dcrime$Year==2015 & dcrime$Type=="Weapons crimes" & dcrime$Race=="Black" & dcrime$Weighting=="NIBRS_Arrest_Cesario" )],
 W_C_3 = dcrime$Count[which(dcrime$Year==2015 & dcrime$Type=="Weapons crimes" & dcrime$Race=="White" & dcrime$Weighting=="NIBRS_Arrest_Cesario" )]
)

c_weapons_2015 <- stan(file="Code/Crime_Model.stan", data=model_dat, refresh=100, chains=nchains, iter=iter, warmup=warmup, control=list(adapt_delta=delta, max_treedepth=mtd))
                      
                          
                          
######################### 2016
model_dat <- list(
 B_P = dces$Black2016[20],
 W_P = dces$White2016[20],
 B_C_1 = dcrime$Count[which(dcrime$Year==2016 & dcrime$Type=="Minor crimes" & dcrime$Race=="Black" & dcrime$Weighting=="NCVS_Weighted" )],
 W_C_1 = dcrime$Count[which(dcrime$Year==2016 & dcrime$Type=="Minor crimes" & dcrime$Race=="White" & dcrime$Weighting=="NCVS_Weighted" )],
 B_C_2 = dcrime$Count[which(dcrime$Year==2016 & dcrime$Type=="Minor crimes" & dcrime$Race=="Black" & dcrime$Weighting=="NIBRS_Cesario" )],
 W_C_2 = dcrime$Count[which(dcrime$Year==2016 & dcrime$Type=="Minor crimes" & dcrime$Race=="White" & dcrime$Weighting=="NIBRS_Cesario" )],
 B_C_3 = dcrime$Count[which(dcrime$Year==2016 & dcrime$Type=="Minor crimes" & dcrime$Race=="Black" & dcrime$Weighting=="NIBRS_Arrest_Cesario" )],
 W_C_3 = dcrime$Count[which(dcrime$Year==2016 & dcrime$Type=="Minor crimes" & dcrime$Race=="White" & dcrime$Weighting=="NIBRS_Arrest_Cesario" )]
)

c_minor_2016 <- stan(file="Code/Crime_Model.stan", data=model_dat, refresh=100, chains=nchains, iter=iter, warmup=warmup, control=list(adapt_delta=delta, max_treedepth=mtd))
          
model_dat <- list(
 B_P = dces$Black2016[20],
 W_P = dces$White2016[20],
 B_C_1 = dcrime$Count[which(dcrime$Year==2016 & dcrime$Type=="Major crimes" & dcrime$Race=="Black" & dcrime$Weighting=="NCVS_Weighted" )],
 W_C_1 = dcrime$Count[which(dcrime$Year==2016 & dcrime$Type=="Major crimes" & dcrime$Race=="White" & dcrime$Weighting=="NCVS_Weighted" )],
 B_C_2 = dcrime$Count[which(dcrime$Year==2016 & dcrime$Type=="Major crimes" & dcrime$Race=="Black" & dcrime$Weighting=="NIBRS_Cesario" )],
 W_C_2 = dcrime$Count[which(dcrime$Year==2016 & dcrime$Type=="Major crimes" & dcrime$Race=="White" & dcrime$Weighting=="NIBRS_Cesario" )],
 B_C_3 = dcrime$Count[which(dcrime$Year==2016 & dcrime$Type=="Major crimes" & dcrime$Race=="Black" & dcrime$Weighting=="NIBRS_Arrest_Cesario" )],
 W_C_3 = dcrime$Count[which(dcrime$Year==2016 & dcrime$Type=="Major crimes" & dcrime$Race=="White" & dcrime$Weighting=="NIBRS_Arrest_Cesario" )]
)

c_major_2016 <- stan(file="Code/Crime_Model.stan", data=model_dat, refresh=100, chains=nchains, iter=iter, warmup=warmup, control=list(adapt_delta=delta, max_treedepth=mtd))
                                    

model_dat <- list(
 B_P = dces$Black2016[20],
 W_P = dces$White2016[20],
 B_C_1 = dcrime$Count[which(dcrime$Year==2016 & dcrime$Type=="Weapons crimes" & dcrime$Race=="Black" & dcrime$Weighting=="NCVS_Weighted" )],
 W_C_1 = dcrime$Count[which(dcrime$Year==2016 & dcrime$Type=="Weapons crimes" & dcrime$Race=="White" & dcrime$Weighting=="NCVS_Weighted" )],
 B_C_2 = dcrime$Count[which(dcrime$Year==2016 & dcrime$Type=="Weapons crimes" & dcrime$Race=="Black" & dcrime$Weighting=="NIBRS_Cesario" )],
 W_C_2 = dcrime$Count[which(dcrime$Year==2016 & dcrime$Type=="Weapons crimes" & dcrime$Race=="White" & dcrime$Weighting=="NIBRS_Cesario" )],
 B_C_3 = dcrime$Count[which(dcrime$Year==2016 & dcrime$Type=="Weapons crimes" & dcrime$Race=="Black" & dcrime$Weighting=="NIBRS_Arrest_Cesario" )],
 W_C_3 = dcrime$Count[which(dcrime$Year==2016 & dcrime$Type=="Weapons crimes" & dcrime$Race=="White" & dcrime$Weighting=="NIBRS_Arrest_Cesario" )]
)

c_weapons_2016 <- stan(file="Code/Crime_Model.stan", data=model_dat, refresh=100, chains=nchains, iter=iter, warmup=warmup, control=list(adapt_delta=delta, max_treedepth=mtd))
                      
########################## Compile                      
 df_c_minor_2015_1 <- data.frame(R=rstan::extract(c_minor_2015,pars="D1")$D1,Year=2015, Type="NCVS (Reports)",Crime="Minor")
 df_c_minor_2015_2 <- data.frame(R=rstan::extract(c_minor_2015,pars="D2")$D2,Year=2015, Type="NIBRS (Reports)",Crime="Minor")
 df_c_minor_2015_3 <- data.frame(R=rstan::extract(c_minor_2015,pars="D3")$D3,Year=2015, Type="NIBRS (Arrests)",Crime="Minor")
 df_c_minor_2015_4 <- data.frame(R=rstan::extract(c_minor_2015,pars="R_Rep")$R_Rep,Year=2015, Type="NCVS vs. NIBRS (Reports)",Crime="Minor")
 df_c_minor_2015_5 <- data.frame(R=rstan::extract(c_minor_2015,pars="R_Arr")$R_Arr,Year=2015, Type="NCVS vs. NIBRS (Arrests)",Crime="Minor")                     
                      
 df_c_minor_2015 <- rbind(df_c_minor_2015_1,df_c_minor_2015_2,df_c_minor_2015_3,df_c_minor_2015_4,df_c_minor_2015_5)                   
                      
 df_c_major_2015_1 <- data.frame(R=rstan::extract(c_major_2015,pars="D1")$D1,Year=2015, Type="NCVS (Reports)",Crime="Major")
 df_c_major_2015_2 <- data.frame(R=rstan::extract(c_major_2015,pars="D2")$D2,Year=2015, Type="NIBRS (Reports)",Crime="Major")
 df_c_major_2015_3 <- data.frame(R=rstan::extract(c_major_2015,pars="D3")$D3,Year=2015, Type="NIBRS (Arrests)",Crime="Major")
 df_c_major_2015_4 <- data.frame(R=rstan::extract(c_major_2015,pars="R_Rep")$R_Rep,Year=2015, Type="NCVS vs. NIBRS (Reports)",Crime="Major")
 df_c_major_2015_5 <- data.frame(R=rstan::extract(c_major_2015,pars="R_Arr")$R_Arr,Year=2015, Type="NCVS vs. NIBRS (Arrests)",Crime="Major")                     
                      
 df_c_major_2015 <- rbind(df_c_major_2015_1,df_c_major_2015_2,df_c_major_2015_3,df_c_major_2015_4,df_c_major_2015_5)                       
                      
 df_c_weapons_2015_1 <- data.frame(R=rstan::extract(c_weapons_2015,pars="D1")$D1,Year=2015, Type="NCVS (Reports)",Crime="Weapons")
 df_c_weapons_2015_2 <- data.frame(R=rstan::extract(c_weapons_2015,pars="D2")$D2,Year=2015, Type="NIBRS (Reports)",Crime="Weapons")
 df_c_weapons_2015_3 <- data.frame(R=rstan::extract(c_weapons_2015,pars="D3")$D3,Year=2015, Type="NIBRS (Arrests)",Crime="Weapons")
 df_c_weapons_2015_4 <- data.frame(R=rstan::extract(c_weapons_2015,pars="R_Rep")$R_Rep,Year=2015, Type="NCVS vs. NIBRS (Reports)",Crime="Weapons")
 df_c_weapons_2015_5 <- data.frame(R=rstan::extract(c_weapons_2015,pars="R_Arr")$R_Arr,Year=2015, Type="NCVS vs. NIBRS (Arrests)",Crime="Weapons")                     
                      
 df_c_weapons_2015 <- rbind(df_c_weapons_2015_1,df_c_weapons_2015_2,df_c_weapons_2015_3,df_c_weapons_2015_4,df_c_weapons_2015_5)                       
                      
 df_c_2015 <- rbind(df_c_minor_2015,df_c_major_2015,df_c_weapons_2015)                       
                                
                      
 df_c_minor_2016_1 <- data.frame(R=rstan::extract(c_minor_2016,pars="D1")$D1,Year=2016, Type="NCVS (Reports)",Crime="Minor")
 df_c_minor_2016_2 <- data.frame(R=rstan::extract(c_minor_2016,pars="D2")$D2,Year=2016, Type="NIBRS (Reports)",Crime="Minor")
 df_c_minor_2016_3 <- data.frame(R=rstan::extract(c_minor_2016,pars="D3")$D3,Year=2016, Type="NIBRS (Arrests)",Crime="Minor")
 df_c_minor_2016_4 <- data.frame(R=rstan::extract(c_minor_2016,pars="R_Rep")$R_Rep,Year=2016, Type="NCVS vs. NIBRS (Reports)",Crime="Minor")
 df_c_minor_2016_5 <- data.frame(R=rstan::extract(c_minor_2016,pars="R_Arr")$R_Arr,Year=2016, Type="NCVS vs. NIBRS (Arrests)",Crime="Minor")                     
                      
 df_c_minor_2016 <- rbind(df_c_minor_2016_1,df_c_minor_2016_2,df_c_minor_2016_3,df_c_minor_2016_4,df_c_minor_2016_5)                   
                      
 df_c_major_2016_1 <- data.frame(R=rstan::extract(c_major_2016,pars="D1")$D1,Year=2016, Type="NCVS (Reports)",Crime="Major")
 df_c_major_2016_2 <- data.frame(R=rstan::extract(c_major_2016,pars="D2")$D2,Year=2016, Type="NIBRS (Reports)",Crime="Major")
 df_c_major_2016_3 <- data.frame(R=rstan::extract(c_major_2016,pars="D3")$D3,Year=2016, Type="NIBRS (Arrests)",Crime="Major")
 df_c_major_2016_4 <- data.frame(R=rstan::extract(c_major_2016,pars="R_Rep")$R_Rep,Year=2016, Type="NCVS vs. NIBRS (Reports)",Crime="Major")
 df_c_major_2016_5 <- data.frame(R=rstan::extract(c_major_2016,pars="R_Arr")$R_Arr,Year=2016, Type="NCVS vs. NIBRS (Arrests)",Crime="Major")                     
                      
 df_c_major_2016 <- rbind(df_c_major_2016_1,df_c_major_2016_2,df_c_major_2016_3,df_c_major_2016_4,df_c_major_2016_5)                       
                      
 df_c_weapons_2016_1 <- data.frame(R=rstan::extract(c_weapons_2016,pars="D1")$D1,Year=2016, Type="NCVS (Reports)",Crime="Weapons")
 df_c_weapons_2016_2 <- data.frame(R=rstan::extract(c_weapons_2016,pars="D2")$D2,Year=2016, Type="NIBRS (Reports)",Crime="Weapons")
 df_c_weapons_2016_3 <- data.frame(R=rstan::extract(c_weapons_2016,pars="D3")$D3,Year=2016, Type="NIBRS (Arrests)",Crime="Weapons")
 df_c_weapons_2016_4 <- data.frame(R=rstan::extract(c_weapons_2016,pars="R_Rep")$R_Rep,Year=2016, Type="NCVS vs. NIBRS (Reports)",Crime="Weapons")
 df_c_weapons_2016_5 <- data.frame(R=rstan::extract(c_weapons_2016,pars="R_Arr")$R_Arr,Year=2016, Type="NCVS vs. NIBRS (Arrests)",Crime="Weapons")                     
                      
 df_c_weapons_2016 <- rbind(df_c_weapons_2016_1,df_c_weapons_2016_2,df_c_weapons_2016_3,df_c_weapons_2016_4,df_c_weapons_2016_5)                       
                      
 df_c_2016 <- rbind(df_c_minor_2016,df_c_major_2016,df_c_weapons_2016)                       
                                
 df_c <- rbind(df_c_2015,df_c_2016)                          
                      
                      
                      
                      
                      
                      
                      
                      
                      
                      
                                                   
                          