class Roman
	def initialize value
		if value.class == Fixnum
			@value = value
		else
			@value = value.length
		end
	end

	def roman_numerals
		@roman_numerals = {
			"I" => 1,
			"II" => 2,
			"IV" => 4,
			"V" => 5,
			"VI" => 6,
			"IX" => 9,
			"X" => 10
		}
	end

	def value
		@value
	end

	def numeral
		# answer = 0
		# roman_numerals.each_pair do |k,v|
		# 	if v == value
		# 		answer = k
			
		# 	end
		# end
		# answer
		string = ""
		string << "X" * (value/10)
		string << "I" if value % 5 == 4
		string << "V" if value % 10 >= 4
		ones = value % 5
		string << "I" * ones if [0,1,2,3].include?(ones)
		string

		# return "IV" if value == 4

		# if value % 5 == 0
		# 	"V"
		# elsif value % 5 == 1
		# 	"V"*(value/5) + "I"
		# else
		# 	"V"*(value/5) + "II"
		# end

	end

end