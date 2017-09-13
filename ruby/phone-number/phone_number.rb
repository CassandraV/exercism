class PhoneNumber
  def self.clean(number)
    s_number = number.gsub(/([^0-9])*/, '')
    s_number.slice!(0) if s_number.size == 11 && s_number[0].match('1')
    return unless valid?(s_number)
    s_number
  end
  
  def self.valid?(s_number)
    [s_number !~ /([a-z])/,
     s_number.size == 10,
     s_number[0].match(/([2-9])/),
     s_number[3].match(/([2-9])/)].all?
  end
end

module BookKeeping
  VERSION = 1
end
