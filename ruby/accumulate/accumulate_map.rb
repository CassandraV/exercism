class Array
  def accumulate(&block)
    map(&block)
  end
end

module BookKeeping
  VERSION = 1
end
