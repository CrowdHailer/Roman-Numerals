def convert(numeral)
	ones, fives, tens, fiftys, hundreds = [/I/,/V/,/X/,/L/,/C/].map { |e| numeral.scan(e).length}

	negative_ones = numeral.scan(/I[VX]/).length
	negative_tens = numeral.scan(/X[LC]/).length

	total = (100*hundreds) + (50*fiftys) + (10*tens) + (5*fives) + ones
	total = (negative_ones != 0) ? total -2 : total
	total = (negative_tens != 0) ? total -20 : total
end