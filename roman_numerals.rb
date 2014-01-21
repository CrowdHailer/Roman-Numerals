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
		return "IV" if value == 4

		if value % 5 == 0
			"V"
		elsif value % 5 == 1
			"V"*(value/5) + "I"
		else
			"V"*(value/5) + "II"
		end

	end

end