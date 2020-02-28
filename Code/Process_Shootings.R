#################################################################### Unarmed suspects
############################################################### All Data
d2015 <- read.csv("Data/the-counted-2015.csv")
d2016 <- read.csv("Data/the-counted-2016.csv")

z <- table(d2015$raceethnicity,d2015$armed)
z <- as.data.frame(z)

B_U_2015_All <- z$Freq[which(z$Var1=="Black" & z$Var2=="No")]
W_U_2015_All <- z$Freq[which(z$Var1=="White" & z$Var2=="No")]

z <- table(d2016$raceethnicity,d2016$armed)
z <- as.data.frame(z)

B_U_2016_All <- z$Freq[which(z$Var1=="Black" & z$Var2=="No")]
W_U_2016_All <- z$Freq[which(z$Var1=="White" & z$Var2=="No")]

############################################################### Shot Data
d2015 <- read.csv("Data/the-counted-2015.csv")
d2016 <- read.csv("Data/the-counted-2016.csv")

d2015 <- d2015[which(d2015$classification=="Gunshot"),]
d2016 <- d2016[which(d2016$classification=="Gunshot"),]

z <- table(d2015$raceethnicity,d2015$armed)
z <- as.data.frame(z)

B_U_2015_GS <- z$Freq[which(z$Var1=="Black" & z$Var2=="No")]
W_U_2015_GS <- z$Freq[which(z$Var1=="White" & z$Var2=="No")]

z <- table(d2016$raceethnicity,d2016$armed)
z <- as.data.frame(z)

B_U_2016_GS <- z$Freq[which(z$Var1=="Black" & z$Var2=="No")]
W_U_2016_GS <- z$Freq[which(z$Var1=="White" & z$Var2=="No")]


#################################################### Cesario agression coding

 dces <- read.csv("Data/CesarioEtAl2018Data.csv")
 
 B_U_2015_CA <- dces$Black2015[18] 
 B_U_2016_CA <- dces$Black2016[18]
 W_U_2015_CA <- dces$White2015[18]
 W_U_2016_CA <- dces$White2016[18]
 
 
#################################################################### Armed suspects
############################################################### All Data armed suspects
d2015 <- read.csv("Data/the-counted-2015.csv")
d2016 <- read.csv("Data/the-counted-2016.csv")

z <- table(d2015$raceethnicity,d2015$armed)
z <- as.data.frame(z)

B_A_2015_AA <- sum(z$Freq[which(z$Var1=="Black" & ( z$Var2=="Firearm" | z$Var2=="Knife" | z$Var2=="Non-lethal firearm" | z$Var2=="Other"  ))])
W_A_2015_AA <- sum(z$Freq[which(z$Var1=="White" & ( z$Var2=="Firearm" | z$Var2=="Knife" | z$Var2=="Non-lethal firearm" | z$Var2=="Other"  ))] )

z <- table(d2016$raceethnicity,d2016$armed)
z <- as.data.frame(z)

B_A_2016_AA <- sum(z$Freq[which(z$Var1=="Black" & ( z$Var2=="Firearm" | z$Var2=="Knife" | z$Var2=="Non-lethal firearm" | z$Var2=="Other"  ))] )
W_A_2016_AA <- sum(z$Freq[which(z$Var1=="White" & ( z$Var2=="Firearm" | z$Var2=="Knife" | z$Var2=="Non-lethal firearm" | z$Var2=="Other"  ))] )

############################################################### Shot Data armed suspects
d2015 <- read.csv("Data/the-counted-2015.csv")
d2016 <- read.csv("Data/the-counted-2016.csv")

d2015 <- d2015[which(d2015$classification=="Gunshot"),]
d2016 <- d2016[which(d2016$classification=="Gunshot"),]

z <- table(d2015$raceethnicity,d2015$armed)
z <- as.data.frame(z)

B_A_2015_GA <- sum(z$Freq[which(z$Var1=="Black" & ( z$Var2=="Firearm" | z$Var2=="Knife" | z$Var2=="Non-lethal firearm" | z$Var2=="Other"  ))]  )
W_A_2015_GA <- sum(z$Freq[which(z$Var1=="White" & ( z$Var2=="Firearm" | z$Var2=="Knife" | z$Var2=="Non-lethal firearm" | z$Var2=="Other"  ))] )

z <- table(d2016$raceethnicity,d2016$armed)
z <- as.data.frame(z)

B_A_2016_GA <- sum(z$Freq[which(z$Var1=="Black" & ( z$Var2=="Firearm" | z$Var2=="Knife" | z$Var2=="Non-lethal firearm" | z$Var2=="Other"  ))] )
W_A_2016_GA <- sum(z$Freq[which(z$Var1=="White" & ( z$Var2=="Firearm" | z$Var2=="Knife" | z$Var2=="Non-lethal firearm" | z$Var2=="Other"  ))] )

############################################################### Shot Data gun suspects
d2015 <- read.csv("Data/the-counted-2015.csv")
d2016 <- read.csv("Data/the-counted-2016.csv")

d2015 <- d2015[which(d2015$classification=="Gunshot"),]
d2016 <- d2016[which(d2016$classification=="Gunshot"),]

z <- table(d2015$raceethnicity,d2015$armed)
z <- as.data.frame(z)

B_A_2015_GF <- sum(z$Freq[which(z$Var1=="Black" & ( z$Var2=="Firearm"  ))] )
W_A_2015_GF <- sum(z$Freq[which(z$Var1=="White" & ( z$Var2=="Firearm"  ))] )

z <- table(d2016$raceethnicity,d2016$armed)
z <- as.data.frame(z)

B_A_2016_GF <- sum(z$Freq[which(z$Var1=="Black" & ( z$Var2=="Firearm"  ))])
W_A_2016_GF <- sum(z$Freq[which(z$Var1=="White" & ( z$Var2=="Firearm"  ))])



##################################################### Compile 
# Unarmed
 B_U <- c(B_U_2015_All,B_U_2015_GS,B_U_2015_CA, B_U_2016_All,B_U_2016_GS,B_U_2016_CA)
 B_Y <- c(2015,2015,2015,2016,2016,2016)
 B_T <- c("All killings","By gunshot","By gunshot, not agressing", "All killings","By gunshot","By gunshot, not agressing")
 B_R <- rep("Black",6)
 
 B <- data.frame(Killed=B_U, Year=B_Y, Type=B_T, Race=B_R)
 
 W_U <- c(W_U_2015_All,W_U_2015_GS,W_U_2015_CA, W_U_2016_All,W_U_2016_GS,W_U_2016_CA)
 W_Y <- c(2015,2015,2015,2016,2016,2016)
 W_T <- c("All killings","By gunshot","By gunshot, not agressing", "All killings","By gunshot","By gunshot, not agressing")
 W_R <- rep("White",6)
 
 W <- data.frame(Killed=W_U, Year=W_Y, Type=W_T, Race=W_R)
 
 D1 <- rbind(B,W)
 D1$Outcome <- "Unarmed"

# Armed
 B_A <- c(B_A_2015_AA,B_A_2015_GA,B_A_2015_GF, B_A_2016_AA,B_A_2016_GA,B_A_2016_GF)
 B_Y <- c(2015,2015,2015,2016,2016,2016)
 B_T <- c("All killings","By gunshot","By gunshot, holding firearm", "All killings","By gunshot","By gunshot, holding firearm")
 B_R <- rep("Black",6)
 
 B <- data.frame(Killed=B_A, Year=B_Y, Type=B_T, Race=B_R)
 
 W_A <- c(W_A_2015_AA,W_A_2015_GA,W_A_2015_GF, W_A_2016_AA,W_A_2016_GA,W_A_2016_GF)
 W_Y <- c(2015,2015,2015,2016,2016,2016)
 W_T <- c("All killings","By gunshot","By gunshot, holding firearm", "All killings","By gunshot","By gunshot, holding firearm")
 W_R <- rep("White",6)
 
 W <- data.frame(Killed=W_A, Year=W_Y, Type=W_T, Race=W_R)
 
 D2 <- rbind(B,W)
 D2$Outcome <- "Armed"
  
 write.csv(rbind(D1,D2), "ShootingData_Gaurdian_Processed.csv")
 
 




