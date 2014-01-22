class Roman
	def initialize value
		if value.class == Fixnum
			@value = value
		else
			ones = value.scan(/I/).count
			fives = value.scan(/V/).count
			@value = 5 * fives + ones
		end
	end

	def value
		@value
	end

	def numeral
		orders = ["IVX", "XLC", "CVM"]
		final = ""
		local_value = self.value
		orders.each do |chars|
			a,b,c = chars.split("")
			final = units(local_value % 10, a, b, c) + final
			local_value = local_value/10

		end
		"M" * local_value + final
	end

	def units(number, ones, fives, tens)
		return ones+fives if number == 4
		return ones+tens if number == 9
		fives * (number/5) + ones * (number % 5)
	end

end