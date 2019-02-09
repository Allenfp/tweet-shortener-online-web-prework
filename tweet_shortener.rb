
word_subs = {
          "hello" => 'hi',
          "to, two, too" => '2',
          "for, four" => '4',
          'be' => 'b',
          'you' => 'u',
          "at" => "@" ,
          "and" => "&",
              }

def word_substituter(strings)
  x = strings.split(" ")
  string_array = []
  
  x.each do |word|
    if word_subs.keys.include? word
      string_array.push(word_subs[word])
    else
      string_array.push(word)
      
  end
  
end