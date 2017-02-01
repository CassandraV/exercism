class Raindrops
  def self.convert(number)
    str = ''
    factors = { 'Pling': 3, 'Plang': 5, 'Plong': 7 }
    factors.each do |word, num|
      str += word.to_s if (number % num).zero?
    end
    str == '' ? number.to_s : str
  end
end

module BookKeeping
  VERSION = 3
end