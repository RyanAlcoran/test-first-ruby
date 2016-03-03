def translate_word(word)
  if %w(a e i o u).include?(word[0]) 
    word << "ay"
  else
    if word.include? "q"
      consonant = word.slice!(0..(word.index("q")+1))
    else
      consonant = word.slice!(0..(word.index(/[aeiou]/))-1)
    end
    word << consonant << "ay"
  end
end

def translate(s)
  words = s.split(" ")
  if words.size == 1
    translate_word(s)
  else
    words.each do |word|
      translate_word(word)
    end
    words.join(" ")
  end
end