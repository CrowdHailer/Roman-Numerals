def convert(numeral)
	ones = numeral.scan(/I/).length
	fives = numeral.scan(/V/).length
	tens = numeral.scan(/X/).length

	total = (fives > 0) ? 10 * tens + 5 - ones : 10 * tens + ones   
end