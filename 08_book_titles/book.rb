class Book
  attr_accessor :title
  
  def title
    exceptions = %w(the a an and in of)
    words = @title.split

    words.each do |word|
      if exceptions.include? word
        word
      else
        word.capitalize!
      end
    end
    words[0].capitalize!
    @title = words.join(" ")
  end
end