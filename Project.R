summary(eBay_Auction)
library(plyr)
count(eBay_Auction,vars="CompetitiveOrNot")
count(ifelse(eBay_Auction$ClosePrice==eBay_Auction$OpenPrice,0,1))
fit1 <- lm(eBay_Auction$ClosePrice ~ eBay_Auction$Duration + eBay_Auction$OpenPrice + 
             eBay_Auction$SellerRating, data=eBay_Auction)
summary(fit1)
