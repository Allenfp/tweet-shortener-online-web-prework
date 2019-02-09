

def word_substituter(tweet)

  word_subs = {
            "hello" => 'hi',
            "to" => '2',
            "two" => '2',
            "too" => '2',
            "for"=> '4',
            "four" => '4',
            'be' => 'b',
            'you' => 'u',
            "at" => "@" ,
            "and" => "&",
                }

  x = tweet.split(" ")
  string_array = []

  x.each do |word|
    if word_subs.keys.include? word
      string_array.push(word_subs[word])
    else
      string_array.push(word)
    end
  end
  string_array.join(" ")
end

def bulk_tweet_shortener(tweets)

  word_subs = {
            "hello" => 'hi',
            "to" => '2',
            "two" => '2',
            "too" => '2',
            "for"=> '4',
            "four" => '4',
            'be' => 'b',
            'you' => 'u',
            "at" => "@" ,
            "and" => "&",
                }
  tweets.each do |tweet|

    x = tweet.split(" ")
    string_array = []

    x.each do |word|
      if word_subs.keys.include? word.downcase
        string_array.push(word_subs[word.downcase])
      else
        string_array.push(word)
      end
    end
    return_string = string_array.join(" ")
    puts return_string
  end

end

def selective_tweet_shortener(tweet)

    word_subs = {
              "hello" => 'hi',
              "to" => '2',
              "two" => '2',
              "too" => '2',
              "for"=> '4',
              "four" => '4',
              'be' => 'b',
              'you' => 'u',
              "at" => "@" ,
              "and" => "&",
                  }

    if tweet.length > 140


        x = tweet.split(" ")
        string_array = []

        x.each do |word|
          if word_subs.keys.include? word.downcase
            string_array.push(word_subs[word.downcase])
          else
            string_array.push(word)
          end
        end
        return_string = string_array.join(" ")
        return return_string

    else
      tweet
    end
end


def shortened_tweet_truncator(tweet)

      word_subs = {
                "hello" => 'hi',
                "to" => '2',
                "two" => '2',
                "too" => '2',
                "for"=> '4',
                "four" => '4',
                'be' => 'b',
                'you' => 'u',
                "at" => "@" ,
                "and" => "&",
                    }

      if tweet.length > 140


          x = tweet.split(" ")
          string_array = []

          x.each do |word|
            if word_subs.keys.include? word.downcase
              string_array.push(word_subs[word.downcase])
            else
              string_array.push(word)
            end
          end
          return_string = string_array.join(" ")
          return return_string[0...140]

      else
        tweet
      end

end
