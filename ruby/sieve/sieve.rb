class Sieve
  def initialize(n)
    @n = n
  end

  def primes
    sieve = create_array(@n)
    return [] if @n < 2
    rec(sieve)
  end

  def create_array(n)
    sieve = []
    (2..n).each { |i| sieve << i }
    sieve
  end
end

def rec(sieve, i = 0)
  list = []
  return sieve if (sieve[i]**2) > @n
  sieve.each do |num|
    list << num if (num % sieve[i]).zero? && num != sieve[i]
  end
  sieve -= list
  i += 1
  rec(sieve, i)
end

module BookKeeping
  VERSION = 1
end
