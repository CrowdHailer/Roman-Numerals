class Roman
	def initialize value
		@value = value
	end

	def value
		return 1 if @value == "I"
		@value
	end

	def numeral
		return "V" if value == 5
		"I"*value
	end

end