class Squares
  def initialize(numbers)
    @numbers = numbers
  end

  def square_of_sum
    sum = 0
    @numbers.times do |num|
      sum += (num + 1)
    end
    sum**2
  end

  def sum_of_squares
    sum = 0
    @numbers.times do |num|
      sum += ((num + 1)**2)
    end
    sum
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 3
end
