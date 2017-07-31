class Book
# write your code here
  attr_accessor :title

  def initialize
  end

  def title= new_title
    exclude_capitalization = ["the","a","an","and","in","of"]
    title_words = new_title.split
    iterator = 1
    @title = title_words[0].capitalize
    while iterator < title_words.size
      if !exclude_capitalization.include? title_words[iterator]
        title_words[iterator] = title_words[iterator].capitalize
      end
      @title += " " + title_words[iterator]
      iterator += 1
    end
  end

  def title
    @title
  end
  #title = title.upcase

end
