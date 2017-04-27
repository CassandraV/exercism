class SumOfMultiples
  attr_accessor :points
  def initialize(*args)
    @points = args
  end

  def to(number)
    h_a = []
    i = 1
    points.each do |point|
      while (point * i) < number
        h_a << point * i unless h_a.include? point * i
        i += 1
      end
      i = 1
    end
    h_a.inject(0) { |sum, x| sum + x }
  end
end
