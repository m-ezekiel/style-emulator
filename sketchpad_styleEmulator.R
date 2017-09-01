# Style Emulator - Sketchpad
# c. Fri Sep  1 12:35:19 CDT 2017

# Import data
sipa <- read.csv("data/columbiaSIPATweets.csv")[ , -1]
darden <- read.csv("data/dardenMBATweets.csv")[ , -1]
kellogg <- read.csv("data/kelloggTweets.csv")[ , -1]
stanford <- read.csv("data/stanfordTweets.csv")[ , -1]
wharton <- read.csv("data/whartonTweets.csv")[ , -1]

# Without chicago b/c they muddy up the mix with their automation
tweets <- rbind(sipa, darden, kellogg, stanford, wharton)
rm(sipa, darden, kellogg, stanford, wharton)

# Explore common tweet beginnings
w1 <- sort(table(tweets$V1))
barplot(tail(w1, n = 10), col = "lightblue")

# Subset based common beginnings
# Repeated tweets are likely indicators of the use of an automated tweet scheduler, or pre-approved database of sm messages.
how_tweets <- tweets[which(tweets$V1 == "How"), ]
why_tweets <- tweets[which(tweets$V1 == "Why"), ]
the_tweets <- tweets[which(tweets$V1 == "The"), ]
what_tweets <- tweets[which(tweets$V1 == "What"), ]
is_tweets <- tweets[which(tweets$V1 == "Is"), ]
we_re_tweets <- tweets[which(tweets$V1 == "We're"), ]
can_tweets <- tweets[which(tweets$V1 == "Can"), ]
when_tweets <- tweets[which(tweets$V1 == "When"), ]
a_tweets <- tweets[which(tweets$V1 == "A"), ]
have_tweets <- tweets[which(tweets$V1 == "Have"), ]


# Subset based common beginnings
how_tweets <- tweets[which(tweets$V1 == "How"), ]

tail(sort(table(how_tweets$V2)))
