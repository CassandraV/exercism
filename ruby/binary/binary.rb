class Binary
  def self.to_decimal(number)
    raise ArgumentError, 'not binary' if number !~ /^[0-1]+$/
    digits = number.split('').reverse
    sum = 0
    digits.each_with_index { |value, index| sum += (value.to_i * (2**index)) }
    sum
  end
end

module BookKeeping
  VERSION = 3
end
