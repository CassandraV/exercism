class Hamming
  def self.compute(str1, str2)
    count = 0
    raise ArgumentError, 'Different sequence length' if str1.size != str2.size
    str1.size.times { |l| count += 1 unless str1[l] == str2[l] }
    count
  end
end

module BookKeeping
  VERSION = 3
end
