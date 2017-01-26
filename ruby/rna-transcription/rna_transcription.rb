class Complement
  def self.of_dna(str)
    dna = {'G'=> 'C', 'C'=>'G','T'=> 'A', 'A'=> 'U'}
    ac_let = /[ACGT]/
    str.match(/^[ACGT]*$/) ? str.gsub!(ac_let, dna) :  ""
  end
end		

module BookKeeping
	VERSION = 4
end

