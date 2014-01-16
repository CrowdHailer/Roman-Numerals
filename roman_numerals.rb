def convert(numeral)
	ones = numeral.scan(/I/).length
	fives = numeral.scan(/V/).length
	tens = numeral.scan(/X/).length

	return 5 - ones if numeral == "IV"
	return (10*tens) + (5*fives) + ones
end