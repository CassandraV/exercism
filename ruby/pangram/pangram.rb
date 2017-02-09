class Pangram
  def self.pangram?(phrase)
    ('a'..'z').all? { |c| phrase.downcase.include?(c) } ? true : false
  end
end

module BookKeeping
  VERSION = 3
end
