# Write your code here.
def word_substituter(tweet)
  dict = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "and" => "&",
    "at" => "@"
  }

  new_tweet = []
  tweet.split(" ").each do |word|
    if dict.include?(word.downcase)
      new_tweet << dict[word.downcase]
    else
      new_tweet << word
    end
  end
  new_tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.collect do |tweet|
    new_tweet = word_substituter(tweet)
    puts new_tweet
  end
end

def selective_tweet_shortener(tweet)
  long_tweet = tweet.chars
  if long_tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    tweet = tweet[0..139]
    tweet[3..5] = "..."
  end
  tweet
end
