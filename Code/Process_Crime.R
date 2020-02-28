################################################################# Load NCSV Data
d<-read.csv("Data/NCVS-ICPSR-2015_36448-0004-Data.csv")
d2Major<-d[which(d$V4529 %in% c(1,2,3,5,6,7,8,9,10,11,12,13)),]   # Codes from the NCVS data-use pdf are numeric, see page 480  (here just major crimes)
d2Minor<-d[which(d$V4529 %in% c(1:20)),]                          # Here all crime codes in NCVS
d2Weapons<-d[which(d$V4049 %in% c(1)),]                           # Here just crimes with weapon (any)

# V4246C #SingleOffenderBlack
# V4281  #MultipleOffenderBlack
# V4285A #Most offenders 1=white, 2=black

# Minor Category
BlackOffendersMinor2015 <- sum(ifelse( (d2Minor$V4246C %in% c(1)) | d2Minor$V4281  %in% c(1) | (d2Minor$V4285A %in% c(2)),1,0  ))
WhiteOffendersMinor2015 <- sum(ifelse( (d2Minor$V4246B %in% c(1)) | d2Minor$V4280  %in% c(1) | (d2Minor$V4285A %in% c(1)),1,0  ))                                

# Major Category
BlackOffendersMajor2015 <- sum(ifelse( (d2Major$V4246C %in% c(1)) | d2Major$V4281  %in% c(1) | (d2Major$V4285A %in% c(2)),1,0  ))
WhiteOffendersMajor2015 <- sum(ifelse( (d2Major$V4246B %in% c(1)) | d2Major$V4280  %in% c(1) | (d2Major$V4285A %in% c(1)),1,0  ))            

# Weapons Category
BlackOffendersWeapons2015 <- sum(ifelse( (d2Weapons$V4246C %in% c(1)) | d2Weapons$V4281  %in% c(1) | (d2Weapons$V4285A %in% c(2)),1,0  ))
WhiteOffendersWeapons2015 <- sum(ifelse( (d2Weapons$V4246B %in% c(1)) | d2Weapons$V4280  %in% c(1) | (d2Weapons$V4285A %in% c(1)),1,0  )) 

# Weights
# Minor Category
BlackOffendersMinor2015w <- sum(ifelse( (d2Minor$V4246C %in% c(1)) | d2Minor$V4281  %in% c(1) | (d2Minor$V4285A %in% c(2)),1,0  )*d2Minor$V4527)
WhiteOffendersMinor2015w <- sum(ifelse( (d2Minor$V4246B %in% c(1)) | d2Minor$V4280  %in% c(1) | (d2Minor$V4285A %in% c(1)),1,0  )*d2Minor$V4527)   

# Major Category
BlackOffendersMajor2015w <- sum(ifelse( (d2Major$V4246C %in% c(1)) | d2Major$V4281  %in% c(1) | (d2Major$V4285A %in% c(2)),1,0  )*d2Major$V4527)
WhiteOffendersMajor2015w <- sum(ifelse( (d2Major$V4246B %in% c(1)) | d2Major$V4280  %in% c(1) | (d2Major$V4285A %in% c(1)),1,0  )*d2Major$V4527)            

# Weapons Category
BlackOffendersWeapons2015w <- sum(ifelse( (d2Weapons$V4246C %in% c(1)) | d2Weapons$V4281  %in% c(1) | (d2Weapons$V4285A %in% c(2)),1,0  )*d2Weapons$V4527)
WhiteOffendersWeapons2015w <- sum(ifelse( (d2Weapons$V4246B %in% c(1)) | d2Weapons$V4280  %in% c(1) | (d2Weapons$V4285A %in% c(1)),1,0  )*d2Weapons$V4527)                                                          
                 
d<-read.csv("Data/NCVS-ICPSR-2016_36828-0004-Data.csv")
d2Major<-d[which(d$V4529 %in% c(1,2,3,5,6,7,8,9,10,11,12,13)),]
d2Minor<-d[which(d$V4529 %in% c(1:20)),]
d2Weapons<-d[which(d$V4049 %in% c(1)),]

# V4246C #SingleOffenderBlack
# V4281  #MultipleOffenderBlack
# V4285A #Most offenders 1=white, 2=black

# Minor Category
BlackOffendersMinor2016 <- sum(ifelse( (d2Minor$V4246C %in% c(1)) | d2Minor$V4281  %in% c(1) | (d2Minor$V4285A %in% c(2)),1,0  ))
WhiteOffendersMinor2016 <- sum(ifelse( (d2Minor$V4246B %in% c(1)) | d2Minor$V4280  %in% c(1) | (d2Minor$V4285A %in% c(1)),1,0  ))                                

# Major Category
BlackOffendersMajor2016 <- sum(ifelse( (d2Major$V4246C %in% c(1)) | d2Major$V4281  %in% c(1) | (d2Major$V4285A %in% c(2)),1,0  ))
WhiteOffendersMajor2016 <- sum(ifelse( (d2Major$V4246B %in% c(1)) | d2Major$V4280  %in% c(1) | (d2Major$V4285A %in% c(1)),1,0  ))            

# Weapons Category
BlackOffendersWeapons2016 <- sum(ifelse( (d2Weapons$V4246C %in% c(1)) | d2Weapons$V4281  %in% c(1) | (d2Weapons$V4285A %in% c(2)),1,0  ))
WhiteOffendersWeapons2016 <- sum(ifelse( (d2Weapons$V4246B %in% c(1)) | d2Weapons$V4280  %in% c(1) | (d2Weapons$V4285A %in% c(1)),1,0  ))     


# Weights
# Minor Category
BlackOffendersMinor2016w <- sum(ifelse( (d2Minor$V4246C %in% c(1)) | d2Minor$V4281  %in% c(1) | (d2Minor$V4285A %in% c(2)),1,0  )*d2Minor$SERIES_IWEIGHT)
WhiteOffendersMinor2016w <- sum(ifelse( (d2Minor$V4246B %in% c(1)) | d2Minor$V4280  %in% c(1) | (d2Minor$V4285A %in% c(1)),1,0  )*d2Minor$SERIES_IWEIGHT)   

# Major Category
BlackOffendersMajor2016w <- sum(ifelse( (d2Major$V4246C %in% c(1)) | d2Major$V4281  %in% c(1) | (d2Major$V4285A %in% c(2)),1,0  )*d2Major$SERIES_IWEIGHT)
WhiteOffendersMajor2016w <- sum(ifelse( (d2Major$V4246B %in% c(1)) | d2Major$V4280  %in% c(1) | (d2Major$V4285A %in% c(1)),1,0  )*d2Major$SERIES_IWEIGHT)           

# Weapons Category
BlackOffendersWeapons2016w <- sum(ifelse( (d2Weapons$V4246C %in% c(1)) | d2Weapons$V4281  %in% c(1) | (d2Weapons$V4285A %in% c(2)),1,0  )*d2Weapons$SERIES_IWEIGHT)
WhiteOffendersWeapons2016w <- sum(ifelse( (d2Weapons$V4246B %in% c(1)) | d2Weapons$V4280  %in% c(1) | (d2Weapons$V4285A %in% c(1)),1,0  )*d2Weapons$SERIES_IWEIGHT)                                               
                                          
##################################################### Compile 
# unweighted
 B_U <- c(BlackOffendersMinor2015,BlackOffendersMajor2015,BlackOffendersWeapons2015, BlackOffendersMinor2016,BlackOffendersMajor2016,BlackOffendersWeapons2016)
 B_Y <- c(2015,2015,2015,2016,2016,2016)
 B_T <- c("Minor crimes","Major crimes","Weapons crimes", "Minor crimes","Major crimes","Weapons crimes")
 B_R <- rep("Black",6)
 B_W <- rep("NCVS_Unweighted",6)
 
 B_un <- data.frame(Count=B_U, Year=B_Y, Type=B_T,Race=B_R,Weighting=B_W)
 
 W_U <- c(WhiteOffendersMinor2015,WhiteOffendersMajor2015,WhiteOffendersWeapons2015, WhiteOffendersMinor2016,WhiteOffendersMajor2016,WhiteOffendersWeapons2016)
 W_Y <- c(2015,2015,2015,2016,2016,2016)
 W_T <- c("Minor crimes","Major crimes","Weapons crimes", "Minor crimes","Major crimes","Weapons crimes")
 W_R <- rep("White",6)
 W_W <- rep("NCVS_Unweighted",6)
 
 W_un <- data.frame(Count=W_U, Year=W_Y, Type=W_T,Race=W_R,Weighting=W_W)

# weighted
 B_U <-c(BlackOffendersMinor2015w,BlackOffendersMajor2015w,BlackOffendersWeapons2015w,BlackOffendersMinor2016w,BlackOffendersMajor2016w,BlackOffendersWeapons2016w)
 B_U <- round(B_U,0)
 B_Y <- c(2015,2015,2015,2016,2016,2016)
 B_T <- c("Minor crimes","Major crimes","Weapons crimes", "Minor crimes","Major crimes","Weapons crimes")
 B_R <- rep("Black",6)
 B_W <- rep("NCVS_Weighted",6)
 
 B_we <- data.frame(Count=B_U, Year=B_Y, Type=B_T,Race=B_R,Weighting=B_W)
 
 W_U <-c(WhiteOffendersMinor2015w,WhiteOffendersMajor2015w,WhiteOffendersWeapons2015w,WhiteOffendersMinor2016w,WhiteOffendersMajor2016w,WhiteOffendersWeapons2016w)
 W_U <- round(W_U,0)
 W_Y <- c(2015,2015,2015,2016,2016,2016)
 W_T <- c("Minor crimes","Major crimes","Weapons crimes", "Minor crimes","Major crimes","Weapons crimes")
 W_R <- rep("White",6)
 W_W <- rep("NCVS_Weighted",6)
 
 W_we <- data.frame(Count=W_U, Year=W_Y, Type=W_T,Race=W_R,Weighting=W_W)

# cesario  ncvs
 B_U <-c(dces$Black2015[14],dces$Black2015[13],dces$Black2015[15],dces$Black2016[14],dces$Black2016[13],dces$Black2016[15])
 B_Y <- c(2015,2015,2015,2016,2016,2016)
 B_T <- c("Minor crimes","Major crimes","Weapons crimes", "Minor crimes","Major crimes","Weapons crimes")
 B_R <- rep("Black",6)
 B_W <- rep("NCVS_Cesario",6)
 
 B_ce <- data.frame(Count=B_U, Year=B_Y, Type=B_T,Race=B_R,Weighting=B_W)
 
 W_U <-c(dces$White2015[14],dces$White2015[13],dces$White2015[15],dces$White2016[14],dces$White2016[13],dces$White2016[15])
 W_Y <- c(2015,2015,2015,2016,2016,2016)
 W_T <- c("Minor crimes","Major crimes","Weapons crimes", "Minor crimes","Major crimes","Weapons crimes")
 W_R <- rep("White",6)
 W_W <- rep("NCVS_Cesario",6)
 
 W_ce <- data.frame(Count=W_U, Year=W_Y, Type=W_T,Race=W_R,Weighting=W_W)
 
# cesario  nbrs reported
 B_U <-c(dces$Black2015[9],dces$Black2015[7],dces$Black2015[11],dces$Black2016[9],dces$Black2016[7],dces$Black2016[11])
 B_Y <- c(2015,2015,2015,2016,2016,2016)
 B_T <- c("Minor crimes","Major crimes","Weapons crimes", "Minor crimes","Major crimes","Weapons crimes")
 B_R <- rep("Black",6)
 B_W <- rep("NIBRS_Cesario",6)
 
 B_cenibrs <- data.frame(Count=B_U, Year=B_Y, Type=B_T,Race=B_R,Weighting=B_W)
 
 W_U <-c(dces$White2015[9],dces$White2015[7],dces$White2015[11],dces$White2016[9],dces$White2016[7],dces$White2016[11])
 W_Y <- c(2015,2015,2015,2016,2016,2016)
 W_T <- c("Minor crimes","Major crimes","Weapons crimes", "Minor crimes","Major crimes","Weapons crimes")
 W_R <- rep("White",6)
 W_W <- rep("NIBRS_Cesario",6)
 
 W_cenibrs <- data.frame(Count=W_U, Year=W_Y, Type=W_T,Race=W_R,Weighting=W_W)
 
# cesario  nibrs arrested
 B_U <-c(dces$Black2015[10],dces$Black2015[8],dces$Black2015[12],dces$Black2016[10],dces$Black2016[8],dces$Black2016[12])
 B_Y <- c(2015,2015,2015,2016,2016,2016)
 B_T <- c("Minor crimes","Major crimes","Weapons crimes", "Minor crimes","Major crimes","Weapons crimes")
 B_R <- rep("Black",6)
 B_W <- rep("NIBRS_Arrest_Cesario",6)
 
 B_cenibrs_ar <- data.frame(Count=B_U, Year=B_Y, Type=B_T,Race=B_R,Weighting=B_W)
 
 W_U <-c(dces$White2015[10],dces$White2015[8],dces$White2015[12],dces$White2016[10],dces$White2016[8],dces$White2016[12])
 W_Y <- c(2015,2015,2015,2016,2016,2016)
 W_T <- c("Minor crimes","Major crimes","Weapons crimes", "Minor crimes","Major crimes","Weapons crimes")
 W_R <- rep("White",6)
 W_W <- rep("NIBRS_Arrest_Cesario",6)
 
 W_cenibrs_ar <- data.frame(Count=W_U, Year=W_Y, Type=W_T,Race=W_R,Weighting=W_W)
 
 
####### Merge 
 
 D <- rbind(B_we,W_we,B_un,W_un,B_ce,W_ce,B_cenibrs,W_cenibrs,B_cenibrs_ar,W_cenibrs_ar)

 cor(D$Count[which(D$Weighting=="NCVS_Weighted")],D$Count[which(D$Weighting=="NCVS_Unweighted")])
 cor(D$Count[which(D$Weighting=="NCVS_Cesario" & D$Year==2015)],D$Count[which(D$Weighting=="NCVS_Unweighted" & D$Year==2015)])
  # Not the same as Cesarios numbers, but by year corr is high. 
  # Based on checking in 2015
  # sum(ifelse( (d2Weapons$V4246B %in% c(1)) | d2Weapons$V4280  %in% c(1) ,1,0  )) 
  # [1] 159
  # sum(ifelse( (d2Weapons$V4246B %in% c(1)) ,1,0  )) 
  # [1] 131
  # it looks like they just omitted crimes with multiple offenders

  write.csv(D, "CrimeData_NCVS-NIBRS_Processed.csv")

