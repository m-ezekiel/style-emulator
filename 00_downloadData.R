# Style Emulator - Download Data
# c. Fri Sep  1 12:35:19 CDT 2017

source("functions/twitterConfig.R")

userName <- "realDonaldTrump"

user <- getUser(userName)
user$statusesCount

# Original content from primary user timeline
OC <- userTimeline(user, n = 20, includeRts = FALSE, excludeReplies = TRUE)

# Original content + Retweets
OC_RT <- userTimeline(user, n = 20, includeRts = TRUE, excludeReplies = TRUE)

# Original content + Retweets + replies
OC_RT_re <- userTimeline(user, n = 20, includeRts = TRUE, excludeReplies = FALSE)

# Original content + replies
OC_re <- userTimeline(user, n = 20, includeRts = FALSE, excludeReplies = FALSE)

OC
OC_RT
OC_RT_re
OC_re