#Q1
a = ((sqrt(5)+1)/2)^2
nombre = sqrt(a)
rm(a)  # delete var a
rm(list = objects())
#Q2.1
V1 = c(-1,3.2,-2,8)
V2 = -2:6
V3 = seq(0.05,0.2,0.05)
V4 = rep(1,10)
V5 = c("OUI","NON")
sort(V1) # sort V1 from the smallest to the biggest
V6 = 2*V2 -3
V3+V2  # feasible
log(V3)
V5+1  # error puisaque V5 est de mode character
V5[2]  # give the second element, R's indice begins from 1
length(V6)
V7 = V6[(length(V6)-2):length(V6)] # don't neglect the parenthesis, 7:9
V7 = V6[length(V6)-2:length(V6)] # means 7 6 5 4 3 2 1 
#Q2.1 application
nbc = c(4138,7077,111766474,3735,2365,1573)
pctb = c(1.1,6.6,26.3,64.7,88.7,98.0,99.9)
sum(nbc*pctb)/sum(nbc)
weighted.mean(pctb,nbc)
#Q3
df= data.frame(nbc=nbc,pctb=pctb,
               taille=c("<100","100 à 199","200 à 499","500 à 999", "1000 à 1999","2000 à 4999","plus de 5000"),
                          row.names=3)
print(df)
max(df$pctb)
df[1:4,2]
summary(df)
names(df)

library(MASS)
genotype
quantile(genotype$Wt,(1:3)/4)
table(genotype$Mother)
var(genotype$Wt) # variance non biaise <> variance empirique
tapply(genotype$Wt,genotype$Litter,mean) # poid moyenne par type de litter
tapply(genotype$Wt,list(mother = genotype$Mother,litter=genotype$Litter),mean)
### Q6  Q6.3 directment
df = read.table("mineral.data",dec=",",header = TRUE) #dec : the character used in the demical point
dim(df)
s = sd(df$nitrate)
m = mean(df$nitrate)
alpha = 0.05
t.test(df$nitrate,alternative = "greater",mu = 3.53) # H0: mu<=3.53 H1:mu>3.53


