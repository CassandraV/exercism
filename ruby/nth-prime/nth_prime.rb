class Prime
  def self.nth(n)
    i = 1
    sieve = []
    raise ArgumentError, 'Number should be higher than 0' if n.zero?
    while sieve.length < n
      flag = 0
      i += 1
      sieve.each { |num| flag = 1 if (i % num).zero? }
      sieve << i if flag.zero?
    end
    sieve.last
  end
end

module BookKeeping
  VERSION = 1
end
