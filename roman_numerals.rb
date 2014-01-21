class Roman
	def initialize value
		if value.class == Fixnum
			@value = value
		else
			@value = value.length
		end
	end

	def value
		@value
	end

	def numeral
		string = tens((value/10) % 10)
		string += units(value % 10)

	end

	def tens number
		return "XL" if number == 4
		return "XC" if number == 9
		"L" * (number/5) + "X" * (number % 5) 
	end

	def units number
		# limit 0 - 9
		return "IV" if number == 4
		return "IX" if number == 9
		"V" * (number/5) + "I" * (number % 5)
	end

end