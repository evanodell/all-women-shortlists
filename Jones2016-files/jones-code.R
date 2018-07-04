## JONES 2016 R code

library(lubridate)
library(dplyr)
library(car)

# ---------------------------  PREPARE DATA  ---------------------------

# Load the csv containing LIWC output
HRC <- read.csv( "Jones2016-files/HRC_LIWC_output.csv", head=T )
HRC.WC <- as.numeric( as.vector( HRC$WC ))

# Set dates
HRC$Date <- mdy( HRC$Date )
date <- HRC$Date
year.all <- list( year( HRC$Date ))
Year <- as.integer( unique( HRC$Year ))
Month <- month( HRC$Date )



# --------------------------- SUBSET DATA FOR FEMININE & MASCULINE VARIABLES  ---------------------------

#  Raw values
HRC.subset <- subset( HRC, select = c( Date, Year, Transcript, WC, pronoun, i, verb, auxverb, social, posemo, negemo, cogmech, tentat, Sixltr, we, article, preps, anger, swear ))
HRC.subset$WC <- as.numeric( HRC.subset$WC )


#  Weighted mean
HRC.wt <- sapply( split( HRC.subset, HRC.subset$Year ), function(x) apply(x[, 4:ncol( HRC.subset )], 2, weighted.mean, x$WC )) # weighted by word count
HRC.wt <- t( HRC.wt ) # transpose matrix
HRC.wt <- data.frame( Year,HRC.wt )
head( HRC.wt )


# --------------------------- BUILD RATIO   ---------------------------

# Ratio by year with raw data
fem.all <- with( HRC.subset, data.frame( pronoun+ i + verb+auxverb +social + posemo+negemo + cogmech+tentat ))
masc.all <- with( HRC.subset, data.frame( Sixltr + we+ article + preps + anger+swear ))
ratio.all <- as.matrix( fem.all/masc.all )
ratio.all <- data.frame( HRC$Year, Month, ratio.all )
colnames( ratio.all ) <- c( "Year","Month", "Ratio" )
HRC.subset$Ratio <- ratio.all$Ratio

#  Check normality
shapiro.test( ratio.all$Ratio ) # Non-normal
#  library(  tseries  )
#  jarque.bera.test( ratio.all$Ratio )# Non-normal

hist( ratio.all$Ratio )
scatterplot( ratio.all$Ratio~ ratio.all$Year, data=ratio.all, xlab="Year", ylab="Ratio feminine/masculine", main="Ratio of feminine/masculine words over time",xlim=c( 1992,2013 ), col="black" )


# Ratio by year using weighted average
masc <- with( HRC.wt, data.frame( Sixltr + we+article + preps + anger+swear ))
fem <- with( HRC.wt, data.frame( pronoun+ i + verb+auxverb+tentat+social + posemo+negemo + cogmech ))
ratio <- as.matrix( fem/masc )
ratio <- data.frame( HRC.wt$Year, ratio )
colnames( ratio ) <- c( "Year","Ratio" )
HRC.wt$Ratio <- ratio$Ratio

#  Check normality
hist( ratio$Ratio )
shapiro.test( ratio$Ratio ) # p = .31 Data are normal
#  jarque.bera.test( ratio$Ratio ) #  p = 0.53
scatterplot( ratio$Ratio~ ratio$Year, data=ratio, xlab="Year", ylab="Feminine/Masculine Ratio", main="Ratio of feminine/masculine words over time", xlim=c( 1992,2013 ), col="black" )



# ---------------------------  SUMMARY STATISTICS  ---------------------------

library( stargazer )

#  Number of Documents & Word Count by Time Period/Year
HRC$period <- HRC$Year
HRC$period[HRC$period < 2000] <- "1992-99"
HRC$period[HRC$period > 2000 & HRC$period < 2007] <- "2001-06"
HRC$period[HRC$period == 2007 | HRC$period == 2008] <- "2007-08"
HRC$period[HRC$period > 2008] <- "2009-13"

period.n <- HRC[,2:ncol( HRC )]%>% group_by( period ) %>% summarise(N = n() )
period.n$N <- as.factor(period.n$N )
period.WC <- HRC[,2:ncol( HRC )]%>% group_by( period ) %>% summarise( WC = sum( WC ) )
period.WC$WC <- as.factor(period.WC$WC )
n.WC <-cbind( period.WC[,2], period.n[,2])
n.WC <- data.frame( t( n.WC ) )


# Weghted mean by Time Period/Year  <--- Table 3 in publication
HRC.wt$period <- HRC.wt$Year
HRC.wt$period[HRC.wt$period < 2000] <- "1992-99"
HRC.wt$period[HRC.wt$period > 2000 & HRC.wt$period < 2007] <- "2001-06"
HRC.wt$period[HRC.wt$period == 2007 | HRC.wt$period == 2008] <- "2007-08"
HRC.wt$period[HRC.wt$period > 2008] <- "2009-13"

stat.sum <- HRC.wt[,2:ncol( HRC.wt )]%>% group_by( period ) %>% summarise_each(funs( mean ) )
stat.sum <- data.frame( t( stat.sum ) )
stat.sum <- rbind( stat.sum,n.WC )
stat.sum

#  Total Word Count, N
T.n.WC <- data.frame( rbind( sum( HRC$WC ),nrow( HRC )), row.names = c( "Total WC", "Total No. Documents" ))
T.n.WC

#  Add to supplementary material
stargazer( HRC.subset[,4:ncol( HRC.subset )],digits = 2, type = "text",summary = TRUE,covariate.labels = c( "Word Count","Pronouns","First-person singular","Verbs","Auxiliary verbs","Social references","Positive emotion","Negative emotion","Cognitive mechanisms","Tentative words","Words >6 letters","First-person plural", "Articles", "Prepositions", "Anger words","Swear words", "Feminine/Masculine ratio" ))



# ---------------------------  PLOT F/M RATIO IN 2007-08 PRESIDENTIAL CAMPAIGN  ---------------------------


HRC.pc <- HRC.subset[which( HRC.subset$Year == 2007|HRC.subset$Year == 2008 ),]

#  Figure 3 in publication
HRC.pc.plot <- ggplot( HRC.pc, aes( x = Date, y = Ratio, linetype=factor(Transcript ) ) )+
  geom_point(aes( shape =factor( Transcript)),size = 3.8 )+
  stat_smooth( method = "glm",span = .9, se = FALSE, colour = "gray35",alpha = .5 )+
  scale_shape_manual(values = c( 16,5 ),name = "Transcript", labels = c( "Debate","Interview" ))+
  scale_linetype_manual( values = c( 2,3 ),name = "",labels = c( " "," " ))+
  scale_x_date( date_breaks = "2 months",date_labels = "%b-%y" )+
  ylab('Feminine/Masculine ratio')+ 
  xlab('Date')+ 
  theme_bw()+
  theme(axis.text = element_text(size=16, colour="black" ))+ 
  theme(axis.line = element_line(colour="black"))+ 
  theme(axis.title = element_text(size=18, colour="black", face="bold" ) )+
  theme(axis.title.x = element_text(margin = margin( 10,0,0,0) ) )+
  theme(axis.title.y = element_text(margin = margin( 0,10,0,0) ) )+
  theme(panel.background = element_rect(fill = "gray100"))+ 
  theme(panel.border = element_rect(fill = "NA"))+
  #  theme(legend.position = "bottom", legend.direction = "horizontal") + 
  theme(legend.title = element_text(size=16, colour="black",face = "bold",margin = margin( 0,0,8,0)  ),
        legend.key =  element_blank( ),
        legend.text =element_text(size=14, colour="black" ),
        legend.margin = unit( 0,"cm" ),
        #  legend.text.align = 0,
        legend.position = c(0.88, 0.92),
        legend.box = "horizontal",
        legend.box.just = "right" )+
  #  legend.background = element_rect(fill = "gray95"))+
  theme(axis.ticks = element_blank( ),
        axis.line = element_line(colour="black" ))+
  theme( panel.grid.major.y= element_line(colour = "gray90", linetype = "solid",size = .3),
         panel.grid.major.x=element_line(colour = "gray90", linetype = "solid",size = .3),
         panel.grid.minor.y=element_blank(),
         panel.grid.minor.x=element_blank() )

HRC.pc.plot



# ---------------------------  BUILD TIME SERIES  ---------------------------

library( tseries )
library(zoo)
library( ggplot2 )

HRC.subset <- HRC.subset[-3] #  drop transcript factor

# ---------------------------  Quarterly time series  ---------------------------

# Summarize all subsetted variables by Year-Quarter
Date <- format.Date( as.yearqtr( HRC.subset$Date )) 
ts.zoo <- zoo( HRC.subset[,3:ncol( HRC.subset )], as.yearqtr( HRC.subset$Date ))#  Error, but still creates zoo object
ts.zoo <- aggregate( ts.zoo, identity, mean )# To fix error, aggregate by averaging duplicate dates within each quarter
ts.zoo2 <- zooreg( c( 0:84 ), start=as.yearqtr( 1992,1 ), end=as.yearqtr( 2013,1 ), frequency=4 )# fill in missing quarters by merging with an empty series containing a complete set quarters
ts.zoo <- merge( ts.zoo[0:75,], ts.zoo2 )# Full matrix including NAs
ts.zoo <- na.approx( ts.zoo ) #  interpolation for NA
ts.zoo <- ts.zoo[,1:17]
plot( ts.zoo[,3:11],plot.type = "single",col = 1:8  )

#  plots
ts.plot.fem <- autoplot.zoo( ts.zoo[,3:11] )+ scale_x_yearqtr(  )
ts.plot.fem # ggplot panel plot for feminine vars
ts.plot.masc <- autoplot.zoo( ts.zoo[,11:17] )+ scale_x_yearqtr(  )
ts.plot.masc # ggplot panel plot for masculine vars

Time <- time( ts.zoo ) 
ts.df <- ts( data.frame( Time, ts.zoo[,1:17], start=1992, frequency=4 ))# convert zoo object into a time series data frame. dates saved as $index but could also add Time to df


# Summarize Ratio by Year-Quarter

ts.zoo.rat <- zoo( HRC.subset$Ratio, as.yearqtr( HRC$Date ) ) #  Error from duplicate dates. Still creates zoo object
ts.zoo.rat <- aggregate( ts.zoo.rat, identity, mean ) # To fix error, aggregate by averaging duplicate dates within each quarter
ts.zoo.rat2 <- zooreg( c( 0:84 ), start=as.yearqtr( 1992,1 ), end=as.yearqtr( 2013,1 ), frequency=4 ) # fill in missing quarters by merging with an empty series containing a complete set quarters
ts.zoo.rat <- merge( ts.zoo.rat[0:75,],ts.zoo.rat2 ) # Full matrix including NAs
ts.zoo.rat <- na.spline( ts.zoo.rat )#spline interpolation for NAs
colnames( ts.zoo.rat ) <- c( "Ratio", "zoo.rat2" )
ts.zoo.rat <- ts.zoo.rat[,1]
#  plot
ts.ratio.plot <- autoplot.zoo( ts.zoo.rat )+ scale_x_yearqtr( n=10 )
ts.ratio.plot

ts.df.rat <- fortify.zoo( ts.zoo.rat,melt = TRUE ) # convert zoo object into a data frame 
ts.df.rat <- as.ts( ts.df.rat ) # make ts
colnames( ts.df.rat ) <- c( "Year","Series","Ratio" )



# ---------------------------  Yearly time series ---------------------------

# Summarize all subsetted (ratio) variables by Year and format as time series
Year <-  year( HRC$Date )
ts.zoo.yr <- zoo( HRC.subset[,3:ncol(  HRC.subset  )], Year  )
ts.zoo.yr <- aggregate( ts.zoo.yr, identity, mean )
ts.zoo2.yr <- zooreg( c( 0:21 ), start=1992, end=2013, frequency=1 )
ts.zoo.yr <- merge( ts.zoo.yr[0:22,], ts.zoo2.yr )
ts.zoo.yr <- ts.zoo.yr[,1:17]
#  plot
ts.yr.plot <- autoplot.zoo( ts.zoo.yr )+ geom_line( color="grey55" )+scale_x_continuous( breaks=c( 1992,1994,1996,1998,2000,2002,2004,2006,2008,2010,2012 ))
ts.yr.plot
ts.df.yr <- fortify.zoo( ts.zoo.yr,melt = FALSE )
ts.df.yr <- as.ts( ts.df.yr )


# Summarize F/M Ratio by Year and format as time series
Year <-  year( HRC$Date )
ts.zoo.yr.rat <- zoo( HRC.subset$Ratio, Year )
ts.zoo.yr.rat <- aggregate( ts.zoo.yr.rat, identity, mean )
ts.zoo2.yr.rat <- zooreg( c( 0:21 ), start=1992, end=2013, frequency=1 )
ts.zoo.yr.rat <- merge( ts.zoo.yr.rat[0:22,], ts.zoo2.yr.rat )
ts.zoo.yr.rat <- ts.zoo.yr.rat[,1]
#  plot
ts.ratio.yr.rat.plot <- autoplot.zoo( ts.zoo.yr.rat )+ geom_line( color="grey55" )+scale_x_continuous( breaks=c( 1992,1994,1996,1998,2000,2002,2004,2006,2008,2010,2012 ) )
ts.ratio.yr.rat.plot
ts.df.yr.rat <- fortify.zoo( ts.zoo.yr.rat,melt = TRUE )
ts.df.yr.rat <- as.ts( ts.df.yr.rat )
colnames( ts.df.yr.rat ) <- c( "Year","Series","Ratio" )



# ---------------------------  GENERALIZED LINEAR MODELS  ---------------------------


# ALL ( multivariate ) based on quarterly time series  <- -- Table 2 Full model in publication
lm.ts <- glm( Time ~ pronoun+ i + verb+auxverb+social + posemo+negemo + cogmech+tentat +Sixltr + we+ article + preps + anger+swear,data = ts.df )
summary( lm.ts )
durbinWatsonTest( lm.ts, max.lag = 6 ) 
jarque.bera.test( resid( lm.ts  ))
anova( lm.ts )


#  RATIO based on yearly time series   <- -- Table 2 Ratio model in publication
lm.ts.rat.yr <- glm( Year~ Ratio, data=ts.df.yr.rat )
summary( lm.ts.rat.yr )
durbinWatsonTest( lm.ts.rat.yr, max.lag = 6 ) 
acf( ts.df.yr.rat )


#  TABLE 2
stargazer( lm.ts,lm.ts.rat.yr, 
           type = "text", style = "ajps", 
           column.labels= c("Full model", "Ratio model" ), 
           dep.var.labels.include = FALSE,
           out = "HRC_reg_model.txt",
           intercept.bottom = FALSE, 
           notes = c( "Full model based on quarterly time series; ratio model based on yearly time series." ), 
           notes.append = TRUE,
           model.numbers = FALSE,
           star.cutoffs = c( .1,.05,.01,.001 ),
           digits = 2,
           covariate.labels = c("Intercept", "Pronouns","First-person singular","Verbs","Auxiliary verbs","Social references","Positive emotion","Negative emotion","Cognitive mechanisms","Tentative words","Words > 6 letters","First-person plural", "Articles", "Prepositions", "Anger words","Swear words", "Feminine/Masculine ratio" ))



# ---------------------------  FORMAT RATIO GRAPH ---------------------------

library( ggthemes )

ts.ratio.yr.rat.plot <- autoplot.zoo( ts.zoo.yr.rat )+ 
  geom_line( color="black", size = 1 )+
  scale_x_continuous( breaks=c( 1992,1994,1996,1998,2000,2002,2004,2006,2008,2010,2012 ))+
  scale_y_continuous( limits=c( 1.5,3 )) + ylab('Feminine/Masculine ratio') + xlab('Year')+ 
  theme_few()+
  theme(axis.text = element_text( size=16, colour="black" ))+ 
  theme(axis.line = element_line( colour="black" ))+ 
  theme(axis.title = element_text( size=18, colour="black", face="bold" ))+ 
  theme(panel.background = element_rect( fill = "gray100"))+ 
  theme(panel.border = element_rect( fill = "NA" ))+
  stat_smooth( method="glm",color="grey70", fill="grey92", size=.9 )+ 
  annotate( "linerange", x = c(1992,1996,2000,2006,2008), ymin = 1.5, ymax = 3, colour = "grey70", size = .9, linetype = 3 )+
  theme(axis.title.x = element_text(margin = margin( 10,0,0,0 )))+
  theme(axis.title.y = element_text(margin = margin( 0,10,0,0 )))+
  theme(panel.border = element_rect(fill = "NA"))+
  theme(axis.ticks = element_blank( ),
        axis.line = element_line(colour="black" ))

ts.ratio.yr.rat.plot



# ---------------------------  COLORED GRAPHS  ---------------------------

#  Yearly
ggcolor.ratio.yr <- autoplot.zoo( ts.zoo.yr.rat )+ 
  geom_line( color="black", size = 1 )+
  scale_x_continuous(breaks=c(1992,1994,1996,1998,2000,2002,2004,2006,2008,2010,2012))+
  scale_y_continuous(limits=c(1.5,3)) + ylab('Feminine/Masculine ratio') + xlab('Year')+ 
  theme_few()+
  theme(axis.text = element_text(size=16, colour="black"))+ 
  theme(axis.line = element_line(colour="black"))+ 
  theme(axis.title = element_text(size=18, colour="black", face="bold"))+ 
  theme(panel.background = element_rect(fill = "gray100"))+ 
  theme(panel.border = element_rect(fill = "NA"))+
  stat_smooth(method="glm",color="dodgerblue", fill="gray85", size=.9)+ 
  annotate("linerange", x = c(1992,1996,2000,2006,2008), ymin = 1.5, ymax = 3, colour = "grey70", size = .9, linetype = 3)+
  theme(axis.title.x = element_text(margin = margin( 10,0,0,0)))+
  theme(axis.title.y = element_text(margin = margin( 0,10,0,0)))+
  theme(panel.border = element_rect(fill = "NA"))+
  theme(axis.ticks = element_blank( ),
        axis.line = element_line(colour="black" ))

ggcolor.ratio.yr


#  Quarterly ( more noise )
ggcolor.ratio.qtr<-autoplot.zoo(ts.zoo.rat)+ 
  geom_line(color="black", size = 1)+
  scale_x_yearqtr(n=10)+
  scale_y_continuous(limits=c(1.5,3.3)) + ylab('Feminine/Masculine ratio') + xlab('Year-Quarter')+ 
  theme_few()+
  theme(axis.text = element_text(size=16, colour="black"))+ 
  theme(axis.line = element_line(colour="black"))+ 
  theme(axis.title = element_text(size=18, colour="black", face="bold"))+ 
  theme(panel.background = element_rect(fill = "gray100"))+ 
  theme(panel.border = element_rect(fill = "NA"))+
  stat_smooth(method="glm",color="dodgerblue", fill="gray85", size=.9)+ 
  annotate("linerange", x = c(1992,1996,2000,2006,2008), ymin = 1.5, ymax = 3.3, colour = "grey70", size = .9, linetype = 3)+
  theme(axis.title.x = element_text(margin = margin( 10,0,0,0) ) )+
  theme(axis.title.y = element_text(margin = margin( 0,10,0,0) ) )+
  theme(panel.border = element_rect(fill = "NA"))+
  theme(axis.ticks = element_blank( ),
        axis.line = element_line(colour="black" ))

ggcolor.ratio.qtr




