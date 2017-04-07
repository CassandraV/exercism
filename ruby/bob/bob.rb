class Bob
  def self.hey(phrase)
    if phrase.contain(/[:word:]+/)
      return 'Fine. Be that way!'
    elsif phrase == phrase.upcase
      return 'Whoa, chill out!'
    elsif phrase.split("").last == "?"
      return 'Sure.'
    else
      return 'Whatever.'
    end
  end
end