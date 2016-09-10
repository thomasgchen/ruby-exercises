#write your code here
def translate(text)
  vowels = ['a', 'e', 'i', 'o', 'u']
  text.split.map! {|word|
    if vowels.include?(word[0])
      word << "ay"
    elsif word[0..1] == "qu"
      qu = word.slice!(0..1)
      word << "#{qu}ay"
    else
      consonant = word.slice!(0)
      word << "#{consonant}ay"
      if word[0..1] == "qu"
        qu = word.slice!(0..1)
        word.insert(-3, qu)
      end
      unless vowels.include?(word[0])
        consonant2 = word.slice!(0)
        word.insert(-3, consonant2)
      end
      unless vowels.include?(word[0])
        consonant2 = word.slice!(0)
        word.insert(-3, consonant2)
      end
      word
    end
  }.join(" ")
end