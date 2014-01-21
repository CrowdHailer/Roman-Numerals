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

		string = ""
		string += (value % 10 != 9) ? "X" * (value/10) : "X" * ((value/10) -1)
		string << "I" if value % 5 == 4
		string << "V" if value % 10 <= 8 && value % 10 >= 4
		string << "X" if value % 10 == 9
		ones = value % 5
		string << "I" * ones if [0,1,2,3].include?(ones)
		string


	end

end