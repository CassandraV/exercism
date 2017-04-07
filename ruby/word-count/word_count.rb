class Phrase
  def initialize(string)
    @string = string
  end
  def word_count
    words = {}
    @string.split(" ").each do |word|
      if !words.has_key? word
        words[word] = 1
      else
        words[word]+=1
      end
    end
  end
end