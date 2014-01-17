require './roman_numerals'

describe 'Roman numeral application' do
	it "Should return 1 when given 'I'" do
		expect(convert("I")).to eq(1)
	end

	it "Should return 2 when given 'II'" do
		expect(convert("II")).to eq(2)
	end

	it "Should return 4 when given 'IV'" do
		expect(convert("IV")).to eq(4)
	end

	it "Should return 5 when given 'V'" do
		expect(convert("V")).to eq(5)
	end

	it "Should return 8 when given 'VIII'" do
		expect(convert("VIII")).to eq(8)
	end

	it "Should return 9 when given 'IX'" do
		expect(convert("IX")).to eq(9)
	end

	it "Should return 10 when given 'X'" do
		expect(convert("X")).to eq(10)
	end

	it "Should return 11 when given 'XI'" do
		expect(convert("XI")).to eq(11)
	end
	
	it "Should return 15 when given 'XV'" do
		expect(convert("XV")).to eq(15)
	end
	
	it "Should return 14 when given 'XIV'" do
		expect(convert("XIV")).to eq(14)
	end

	it "Should return 19 when given 'XIX'" do
		expect(convert("XIX")).to eq(19)
	end

	it "Should return 50 when given 'L'" do
		expect(convert("L")).to eq(50)
	end

	it "Should return 40 when given 'XL'" do
		expect(convert("XL")).to eq(40)
	end

	it "Should return 90 when given 'XC'" do
		expect(convert("XC")).to eq(90)
	end

	it "Should return 149 when given 'CXLIX'" do
		expect(convert("CXLIX")).to eq(149)
	end

	it "Should return 300 when given 'CCC'" do
		expect(convert("CCC")).to eq(300)
	end

	it "Should return 400 when given 'CD'" do
		expect(convert("CD")).to eq(400)
	end

	it "Should return 900 when given 'CM'" do
		expect(convert("CM")).to eq(900)
	end
end