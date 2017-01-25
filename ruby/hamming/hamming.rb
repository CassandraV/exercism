class Hamming
	def self.compute(str1,str2)
		count = 0
		if str1.size != str2.size
			raise ArgumentError.new('Different sequence length')
		else
			str1.size.times do |l|
				unless str1[l] == str2[l]
					count += 1
				end
			end
			return count
		end
	end
end

module BookKeeping
	VERSION = 3
end