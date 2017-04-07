class Bob
  def self.hey(phrase)
    if uppercase?(phrase)
      'Whoa, chill out!'
    elsif question?(phrase)
      'Sure.'
    elsif !contains_text?(phrase) && !contains_number?(phrase)
      'Fine. Be that way!'
    else
      'Whatever.'
    end
  end

  def self.uppercase?(phrase)
    phrase == phrase.upcase && contais_text?(phrase)
  end

  def self.question?(phrase)
    phrase.split('').last == '?'
  end

  def self.contains_text?(phrase)
    phrase.match(/[a-zA-Z]+/)
  end

  def self.contains_number?(phrase)
    phrase.match(/[0-9]+/)
  end
end
