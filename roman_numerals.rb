def convert(numeral)
	ones = numeral.scan(/I/).length
	fives = numeral.scan(/V/).length
	tens = numeral.scan(/X/).length

	return 5 * fives - ones if numeral == "IV"
	return 10 * tens - ones if numeral == "IX"
	return (10*tens) + (5*fives) + ones
end