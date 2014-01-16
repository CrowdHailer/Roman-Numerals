def convert(numeral)
	ones = numeral.scan(/I/).length
	fives = numeral.scan(/V/).length
	tens = numeral.scan(/X/).length
	negative_ones = numeral.scan(/I[VX]/).length

	ones *= (-1) if negative_ones != 0
	(10*tens) + (5*fives) + ones
end