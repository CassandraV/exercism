class Grains
  def self.square(num)
    total = 1
    n = 1
    raise ArgumentError if num < 1
    raise ArgumentError if num > 64
    while n < num
      total = 2 * total
      n += 1
    end
    total
  end

  def self.total
    total = 0
     (1..64).each do |i|
       total += square(i)
      end
      return total
  end
end

module BookKeeping
  VERSION = 1
end
