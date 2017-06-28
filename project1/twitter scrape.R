install.packages("twitteR")
install.packages("ROAuth")
library("twitteR")
library("ROAuth")
# Download "cacert.pem" file
download.file(url="http://curl.haxx.se/ca/cacert.pem",destfile="C:\\Users\\Nick\\Desktop\\ISA401\\project1\\cacert.pem")

cred <- OAuthFactory$new(consumerKey='vsyuJFpJ4tPJ2inHfs0V0BUrR',
                         consumerSecret='EKkFsJriLowri4blYmlULID0Iotlwk5ONshHGR1eT7pJTSxwEB',
                         requestURL='https://api.twitter.com/oauth/request_token',
                         accessURL='https://api.twitter.com/oauth/access_token',
                         authURL='https://api.twitter.com/oauth/authorize')
# Executing the next step generates an output --> To enable the connection, please direct your web browser to: <hyperlink> . Note:  You only need to do this part once
cred$handshake(cainfo="cacert.pem")

#save for later use for Windows
save(cred, file="twitter authentication.Rdata")

load("twitter authentication.Rdata")
registerTwitterOAuth(cred)

install.packages(c("devtools", "rjson", "bit64", "httr"))
#RESTART R session!
library(devtools)
install.packages('twitteR')
library(twitteR)

#Now the twitteR package is up-to-date 
#setup_twitter_oauth() function uses the httr package

#Twitter Authentication with R

Consumer_key<- "vsyuJFpJ4tPJ2inHfs0V0BUrR"
Consumer_secret <- "EKkFsJriLowri4blYmlULID0Iotlwk5ONshHGR1eT7pJTSxwEB"
access_token <- "746320405-LnHEzc4OP6citqes0j3ETFBvIwqVYkXPId8z113k"
access_token_secret <- "4YMuFrg9KEYcpqmLWVAedoDbtNsnEI0Ua19DNYT42tb8x"
setup_twitter_oauth(Consumer_key,Consumer_secret,access_token,access_token_secret)

#You can Search
searchTwitter("#WT20")
userTimeline('nick_barry_', n=20,maxID=NULL, sinceID=NULL, includeRts=FALSE, 
             excludeReplies=FALSE)
userTimeline('nick_barry_',n=20(searchTwitter("newbar")))
tweets = userTimeline('nick_barry_', n=20,maxID=NULL, sinceID=NULL, includeRts=FALSE, 
                      excludeReplies=FALSE)
install.packages('xlsx')
library(xlsx) #load the package

myMorningTweetsDF <- twListToDF(tweets)
write.csv(myMorningTweetsDF, "C:\\Users\\Nick\\Desktop\\ISA401\\project1\\test.csv")
stocktweets= userTimeline('SJosephBurns', n=2000,maxID=NULL, sinceID=NULL, includeRts=FALSE, 
                          excludeReplies=FALSE)
stocktweetsDF = twListToDF(stocktweets)
write.csv(stocktweetsDF, "C:\\Users\\Nick\\Desktop\\ISA401\\project1\\burns.csv")
redtweets=userTimeline('RedDogT3', n=3200,maxID=NULL, sinceID=NULL, includeRts=FALSE, 
                       excludeReplies=FALSE)
redtweetsDF = twListToDF(redtweets)
write.csv(redtweetsDF, "C:\\Users\\Nick\\Desktop\\ISA401\\project1\\scott_redler.csv")

markettweets=userTimeline('MarketWatch', n=3200,maxID=NULL, sinceID=NULL, includeRts=FALSE, 
                       excludeReplies=FALSE)
markettweetsDF = twListToDF(markettweets)
write.csv(markettweetsDF, "C:\\Users\\Nick\\Desktop\\ISA401\\project1\\Marketwatch.csv")

streettweets=userTimeline('TheStreet', n=3200,maxID=NULL, sinceID=NULL, includeRts=FALSE, 
                       excludeReplies=FALSE)
thestreetsDF = twListToDF(streettweets)
write.csv(thestreetsDF, "C:\\Users\\Nick\\Desktop\\ISA401\\project1\\thestreet.csv")

streettweets=userTimeline('TheStreet', n=3200,maxID=NULL, sinceID=NULL, includeRts=FALSE, 
                          excludeReplies=FALSE)



searchTwitter('realDonadTrump', since='2011-03-01', until='2011-03-02')
