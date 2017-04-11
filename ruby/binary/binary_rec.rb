class Binary
  def self.to_decimal(number)
    raise ArgumentError, 'not binary' if number !~ /^[0-1]+$/
    digits = number.split('').reverse
    find_result(digits)
  end

  def self.find_result(digits)
    return digits.pop.to_i if digits.size == 1
    digits.pop.to_i * (2**digits.size) + find_result(digits)
  end
end

module BookKeeping
  VERSION = 3
end
