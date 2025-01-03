# If you have remotes or devtools installed:
remotes::install_github("cjbarrie/academictwitteR") 
# or 
install_github("cjbarrie/academictwitteR")

Sys.setlocale("LC_ALL", "en_US.UTF-8")  # if needed

# Then load the package
library(academictwitteR)

# Now you should be able to run get_all_tweets() without error
tweets_with_pizza <- get_all_tweets(
  query        = "🍕",
  start_tweets = "2023-01-01T00:00:00Z",
  end_tweets   = "2023-01-02T00:00:00Z",
  bearer_token = "YOUR_BEARER_TOKEN",
  n            = 10,
  data_path    = "data",
  bind_tweets  = TRUE,
  verbose      = TRUE
)

# Pseudocode for sourcing the entire R/ folder:
source("path/to/academictwitteR/R/check_data_path.R")
source("path/to/academictwitteR/R/build_query.R")
 source("path/to/academictwitteR/R/get_tweets.R")
source("path/to/academictwitteR/R/add_context_annotations.R")
source("path/to/academictwitteR/R/utils.R")
# ...and so on for every other .R file that contains dependencies

# Finally, source get_all_tweets.R
source("path/to/academictwitteR/R/get_all_tweets.R")

