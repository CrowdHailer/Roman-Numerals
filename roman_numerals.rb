def convert(numeral)
	ones, fives, tens, fiftys, hundreds, five_hundreds = [/I/,/V/,/X/,/L/,/C/,/D/].map { |e| numeral.scan(e).length}

	negative_ones = numeral.scan(/I[VX]/).length
	negative_tens = numeral.scan(/X[LC]/).length
	negative_hundreds = numeral.scan(/C[D]/).length

	total = (500*five_hundreds) + (100*hundreds) + (50*fiftys) + (10*tens) + (5*fives) + ones
	total = (negative_ones != 0) ? total -2 : total
	total = (negative_tens != 0) ? total -20 : total
	total = (negative_hundreds != 0) ? total -200 : total
end