require './roman_numerals'

describe 'Roman numeral application' do
	it "Should return 1 when given 'I'" do
		expect(convert("I")).to eq(1)
	end

	it "Should return 2 when given 'II'" do
		expect(convert("II")).to eq(2)
	end
end