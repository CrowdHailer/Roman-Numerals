require_relative "../roman_numerals"

describe Roman do

	it "should represent the number 1 given 1" do
		expect(Roman.new(1).value).to eq(1)		
	end

	it "should represent the number 2 given 2" do
		expect(Roman.new(2).value).to eq(2)		
	end

	it "should return I when given 1" do
		expect(Roman.new(1).numeral).to eq("I")		
	end

	it "should return II when object given 2" do
		roman = Roman.new(2)
		expect(roman.numeral).to eq("II")		
	end

	it "should return V when object given 5" do
		roman = Roman.new(5)
		expect(roman.numeral).to eq("V")		
	end

	it "should represent 1 given I" do
		roman = Roman.new("I")
		expect(roman.value).to eq(1)
	end

	it "should represent 2 given II" do
		roman = Roman.new("II")
		expect(roman.value).to eq(2)
	end

	it "should return IV on representation 4" do
		roman = Roman.new(4)
		expect(roman.numeral).to eq("IV")
	end

	it "should return VI on representation 6" do
		roman = Roman.new(6)
		expect(roman.numeral).to eq("VI")
	end

	it "should return X on representation 10" do
		roman = Roman.new(10)
		expect(roman.numeral).to eq("X")
	end
end
