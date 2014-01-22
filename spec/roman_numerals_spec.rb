require_relative "../roman_numerals"

describe Roman do

	it "should represent the number 1 given 1" do
		expect(Roman.new(1).value).to eq(1)		
	end

	it "should represent the number 2 given 2" do
		expect(Roman.new(2).value).to eq(2)		
	end

	it "should represent the number 4 given IV" do
		expect(Roman.new("IV").value).to eq(4)		
	end

	it "should represent the number 5 given V" do
		expect(Roman.new("V").value).to eq(5)		
	end

	it "should represent the number 10 given X" do
		expect(Roman.new("X").value).to eq(10)		
	end

	it "should represent 1 given I" do
		roman = Roman.new("I")
		expect(roman.value).to eq(1)
	end

	it "should represent 2 given II" do
		roman = Roman.new("II")
		expect(roman.value).to eq(2)
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

	it "should return XVIII on representation 18" do
		roman = Roman.new(18)
		expect(roman.numeral).to eq("XVIII")
	end

	it "should return XX on representation 20" do
		roman = Roman.new(20)
		expect(roman.numeral).to eq("XX")
	end

	it "should return XXV on representation 25" do
		roman = Roman.new(25)
		expect(roman.numeral).to eq("XXV")
	end

	it "should return XXIX on representation 29" do
		roman = Roman.new(29)
		expect(roman.numeral).to eq("XXIX")
	end

	it "should return XXXIX on representation 39" do
		roman = Roman.new(39)
		expect(roman.numeral).to eq("XXXIX")
	end

	it "should return XLIX on representation 49" do
		roman = Roman.new(49)
		expect(roman.numeral).to eq("XLIX")
	end

	it "should return LI on representation 51" do
		roman = Roman.new(51)
		expect(roman.numeral).to eq("LI")
	end

	it "should return LXXXVI on representation 86" do
		roman = Roman.new(86)
		expect(roman.numeral).to eq("LXXXVI")
	end

	it "should return XCI on representation 91" do
		roman = Roman.new(91)
		expect(roman.numeral).to eq("XCI")
	end

	it "should return CCCI on representation 301" do
		roman = Roman.new(301)
		expect(roman.numeral).to eq("CCCI")
	end

	it "should return CMXCVII on representation 997" do
		roman = Roman.new(997)
		expect(roman.numeral).to eq("CMXCVII")
	end

	it "should return M on representation 1000" do
		roman = Roman.new(1000)
		expect(roman.numeral).to eq("M")
	end

	it "should return MMMMCM on representation 4900" do
		roman = Roman.new(4900)
		expect(roman.numeral).to eq("MMMMCM")
	end
end
