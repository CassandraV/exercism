class RunLengthEncoding
  def self.encode(input)
    code = ''
    until input.empty?
      code_part = /(.)\1*/.match(input)
      input = input.slice!(code_part.to_s.length, input.length)
      code << code_part.to_s.length.to_s if code_part.to_s.length > 1
      code << code_part.to_s[0]
    end
    code
  end

  def self.decode(input)
    encoded = input.split(/([^0-9])/)
    decoded = ''
    encoded.each_with_index do |element, index|
      decoded +=  encoded[index + 1] * element.to_i if /[0-9]/ =~ element
      decoded +=  encoded[index + 1] if element.empty?
    end
    decoded
  end
end

module BookKeeping
  VERSION = 2
end
