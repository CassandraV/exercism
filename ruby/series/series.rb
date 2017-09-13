class Series
  def initialize(str)
    @str = str
  end

  def slices(digits, num = @str, store = [])
    raise ArgumentError, 'Not enough digits to create set' if @str.size < digits
    set = num[/\w{#{digits}}/, 0]
    store.push set unless store.include?(set) || set.nil?
    slices(digits, num[1..-1], store) if num.size >= digits
    store.flatten
  end
end
