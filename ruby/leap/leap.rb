class Year
  def self.leap?(year)
    (year % 4).zero? unless (year % 100).zero? && !(year % 400).zero?
  end
end

module BookKeeping
  VERSION = 2
end
