library(modeest)
admission<-read.csv("C:\\DS\\Admission_Predict.csv")
View(admission)
str(admission)

#mean
cgpamean<-mean(admission$CGPA)
print(cgpamean)

#median
sop<-median(admission$SOP)
print(sop)

#mode
lormd<-mfv(admission$LOR)
print(lormd)

#standard deviation
admitsd<-sd(admission$Chance.of.Admit)
print(admitsd)

#range
range<-max(admission$GRE.Score)-min(admission$TOEFL.Score)
print(range)

#variance
ratingvar<-var(admission$University.Rating)
print(ratingvar)

library(moments)

#kurtosis
kurtosis(admission$GRE.Score)
#skewness
skewness(admission$GRE.Score)