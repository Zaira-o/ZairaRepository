#Zaira Ordoubadi, CPSC 229
#initial data + cleaning 
library(readr)
Child_health_malaria_CoD_Feb_2018_WHO_MCEE_1 <- read_csv("Child-health_malaria_CoD_Feb-2018_WHO_MCEE_-1.csv")
View(Child_health_malaria_CoD_Feb_2018_WHO_MCEE_1)
data.frame<-(Child_health_malaria_CoD_Feb_2018_WHO_MCEE_1)
Child.Death.WHO<-(Child_health_malaria_CoD_Feb_2018_WHO_MCEE_1)
na.omit(Child.Death.WHO)
View(Child.Death.WHO)

Child.Death.WHO <- Child.Death.WHO[c(-1,-4)]
Child.Death.WHO <- Child.Death.WHO[c(-5, -6, -7, -9, -10, -13)]

View(Child.Death.WHO)

colnames(Child.Death.WHO)[1] <- "Country"
colnames(Child.Death.WHO)[2] <- "Year"
colnames(Child.Death.WHO)[3] <- "PNN.malaria"
colnames(Child.Death.WHO)[4] <- "NNdeaths.malaria"
colnames(Child.Death.WHO)[6] <- "Under5deaths.malaria"
colnames(Child.Death.WHO)[9] <- "Malaria.deaths/1000"
colnames(Child.Death.WHO)[12] <- "%Under5deaths"

Child.Death.WHO <- Child.Death.WHO[-c(1:5),] 
Child.Death.WHO <- Child.Death.WHO[c(-5,-7, -8, -10, -11)]
############

Child.Death.WHO <- Child.Death.WHO[-c(1:5),] 
Child.Death.WHO <- Child.Death.WHO[ -c(1, 4:7, 9:10, 11:13) ]


#####################
#####################

#subsetting and plotting 

#DRC
DRC <- Child.Death.WHO[613:629,]
View(DRC)

ggplot(data=DRC, aes(x=Year, y=Under5deaths.malaria)) +
      geom_bar(stat="identity", color="blue", fill="white")+labs(title = "<5 Malaria Deaths in DRC", y="Death Count", x = "Year")

###############################
#y axis ordered
z<-c(2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016)
q<-c(106472, 105805, 108001, 110371, 114492, 112332, 113299, 107052, 100730, 93577, 81297, 68147, 56874, 48723, 44537, 41047, 39001)
DRC2<-data.frame(z,q)
View(DRC2)
ggplot(data=DRC2, aes(x=z, y=q)) + geom_bar(stat="identity", color="blue", fill="white") + labs(title="<5 Malaria Deaths in DRC", x="Year", y="Death Count")


#Global data

global.stats <- Child.Death.WHO[1:17,]
View(global.stats)
ggplot(data=global.stats, aes(x=Year, y=Under5deaths.malaria))+
  geom_bar(stat="identity", color="black", fill="lightblue")+labs(title = "Global Incidence of <5 Malaria Deaths", y="Death Count", x = "Year")

                                                                  
#Philippines Data              
View(Child.Death.WHO)
PHL <- Child.Death.WHO[2364:2380,]
PHL2 <-data.frame(PHL)
View(PHL2)
ggplot(data=PHL2, aes(x=Year, y=Under5deaths.malaria))+ 
  geom_bar(stat="identity", color="black", fill="blue") +labs(title="<5 Malaria Deaths in the Philippines", x="Year", y="Death Count")
###
#y axis reordered
r<-c(2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016)
s<-c(74, 70, 75, 98, 107, 74, 56, 52, 33, 27, 26, 12, 8, 8, 6, 10, 8)
PHL3<-data.frame(r,s)
View(PHL3)
ggplot(data=PHL3, aes(x=r, y=s))+ 
  geom_bar(stat="identity", color="black", fill="blue") +labs(title="<5 Malaria Deaths in the Philippines", x="Year", y="Death Count")


##Ethiopia  


View(Child.Death.WHO)
ETH<-Child.Death.WHO[970:986,]
ggplot(data=ETH, aes(x=Year, y=Under5deaths.malaria))+
  geom_bar(stat="identity", color="black", fill="lightpink")+labs(title = "<5 Malaria Deaths in Ethiopia", y="Death Count", x = "Year")
#######
#y axis reordered 
x<-c(2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016) 
y<-c(4903, 7868, 8186, 11017, 15816, 11192, 7158, 4654, 2652, 3046, 3533, 1662, 1939, 2286, 1674, 1550, 1451)
new.trial<-data.frame(x, y)
View(new.trial)
ggplot(data=new.trial, aes(x=x, y=y)) + geom_bar(stat="identity", color="black", fill="lightpink") +
  labs(title="<5 Malaria Deaths in Ethiopia", x="Year", y="Death Count")


##########



