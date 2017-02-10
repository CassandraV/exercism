class Integer
  def digits(base: 10)
    quotient, remainder = divmod(base)
    quotient.zero? ? [remainder] : [*quotient.digits(base: base), remainder]
  end

  def to_roman(i = 1, str = '')
    equiv = { 1 => 'I', 4 => 'IV', 5 => 'V', 9 => 'IX', 10 => 'X', 40 => 'XL',
              50 => 'L', 90 => 'XC', 100 => 'C', 400 => 'CD', 500 => 'D',
              900 => 'CM', 1000 => 'M' }
    array = abs.digits
    array.each do |num|
      unless num.zero?
        n_num = num * 10**(array.length - i)
        if !equiv[n_num].nil?
          str << equiv[n_num].to_s
        else
          sm_number = letter_of_smaller_number(equiv, n_num)
          str << equiv[sm_number] * (n_num / sm_number)
          until (n_num % sm_number).zero?
            n_num %= sm_number
            sm_number = letter_of_smaller_number(equiv, n_num)
            str << equiv[sm_number] * (n_num / sm_number)
          end
        end
      end
      i += 1
    end
    str
  end

  def letter_of_smaller_number(hash, number)
    h_hash = Hash[hash.to_a.reverse]
    h_hash.detect { |key, _letter| key <= number }.first
  end
end

module BookKeeping
  VERSION = 2
end
