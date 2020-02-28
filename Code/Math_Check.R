
 dces <- read.csv("Data/CesarioEtAl2018Data.csv")
 
 dcrime <- read.csv("CrimeData_NCVS-NIBRS_Processed.csv") 
 
 d <- read.csv("ShootingData_Gaurdian_Processed.csv")
 
 d <- d[which(d$Outcome=="Unarmed"),]
 

######################### NCVS
model_dat <- list(
 B_S = d$Killed[which(d$Year==2016 & d$Type=="All killings" & d$Race=="Black")],
 W_S = d$Killed[which(d$Year==2016 & d$Type=="All killings" & d$Race=="White")],
 B_P = dces$Black2016[20],
 W_P = dces$White2016[20],
 B_C = dcrime$Count[which(dcrime$Year==2016 & dcrime$Type=="Minor crimes" & dcrime$Race=="Black" & dcrime$Weighting=="NCVS_Weighted" )],
 W_C = dcrime$Count[which(dcrime$Year==2016 & dcrime$Type=="Minor crimes" & dcrime$Race=="White" & dcrime$Weighting=="NCVS_Weighted" )]
)


a_B <- model_dat$B_C/model_dat$B_P
a_W <- model_dat$W_C/model_dat$W_P

(1-a_B)/(1-a_W)
(a_W/a_B)
print(((1-a_B)/(1-a_W))*(a_W/a_B)  )