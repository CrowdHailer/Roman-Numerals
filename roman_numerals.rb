def convert(numeral)
	counts = [/I/,/V/,/X/,/L/,/C/,/D/,/M/,/I[VX]/,/X[LC]/,/C[DM]/].map { |e| numeral.scan(e).length}
	values = [1,5,10,50,100,500,1000,-2,-20,-200]
	(0..counts.size-1).inject(0) { |mem, var|  mem + counts[var]*values[var]}
end