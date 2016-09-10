class Book
# write your code here
  attr_reader :title

  def title=(new_title)
    new_title.capitalize!
    words_no_cap = ["and", "or", "the", "over", "to", "the", "a", "but", "in", "of", "an"]
    @title = new_title.split.map {|word|
        if words_no_cap.include?(word) 
          word
        else
          word.capitalize
        end
    }.join(" ")
  end
end
