class Phrase
  def initialize(string)
    @string = string.gsub(/'([\w]+)'/, '\1')
                    .downcase
                    .split(/[^[[:word:]]']+/)
  end

  def word_count
    words_count = {}
    @string.each { |word| words_count[word] = @string.count(word) }
    words_count
  end
end

module BookKeeping
  VERSION = 1
end
