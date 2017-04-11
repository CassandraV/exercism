class Array
  def accumulate
    new_array = []
    each { |element| new_array.push yield element }
    new_array
    # self.map(&block)
  end
end

module BookKeeping
  VERSION = 1
end
