library(twitteR)

# get autorization
api_key="your app key goes here"
api_secret="your app secret goes here"
acces_token="your access token goes here"
acces_token_secret="your token secret goes here"
setup_twitter_oauth(api_key,api_secret,acces_token,acces_token_secret)

# or you can authenticate by sourcing your authentication file
source(' your authentication file')

# get ourserlf
me<-twitteR::getUser('your twitter user name')

# get our friends (users we're following)
myFriends<-me$getFriendIDs()

# get our followers
myFollowers<-me$getFollowerIDs()

# get the users that we are following and not follow us back
notfollowingme<-myFriends[which(!myFriends %in% myFollowers)]

# look for the name of that users or omit if the don't already exist  
lookupUsers(notfollowingme,includeNA = TRUE)
