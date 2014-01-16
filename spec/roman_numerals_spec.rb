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

	it "Should return 10 when given 'X'" do
		expect(convert("X")).to eq(10)
	end
end