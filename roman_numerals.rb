def convert(numeral)
	ones, fives, tens, fiftys, hundreds, five_hundreds, thousands = [/I/,/V/,/X/,/L/,/C/,/D/,/M/].map { |e| numeral.scan(e).length}

	negative_ones = numeral.scan(/I[VX]/).length
	negative_tens = numeral.scan(/X[LC]/).length
	negative_hundreds = numeral.scan(/C[DM]/).length

	total = (1000*thousands) +(500*five_hundreds) + (100*hundreds) + (50*fiftys) + (10*tens) + (5*fives) + ones
	total += negative_ones * -2
	total += negative_tens * -20
	total += negative_hundreds * -200
	
end