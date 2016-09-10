#write your code here
def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, num=2)
  "#{word} " * (num-1) + "#{word}"
end

def start_of_word(word, num)
  word[0, num]
end

def first_word(word)
  word.split[0]
end

def titleize(word)
  word.capitalize!
  words_no_cap = ["and", "or", "the", "over", "to", "the", "a", "but"]
  title = word.split.map {|s|
      if words_no_cap.include?(s) 
        s
      else
        s.capitalize
      end
  }.join(" ")
  title
end