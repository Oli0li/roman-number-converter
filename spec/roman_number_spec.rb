require "spec_helper.rb"
require "roman_number.rb"

RSpec.describe "Roman number to arabic number"do
  context "when using 'convert'" do
    it "converts '' to 0" do
       num = RomanNumber.new('')
      expect(num.convert).to eq(0)
    end

    it "converts 'X' to 10" do
      num = RomanNumber.new('X')
      expect(num.convert).to eq(10)
    end

    it "converts 'IX' to 9" do
      num = RomanNumber.new('IX')
      expect(num.convert).to eq(9)
    end

    it "converts 'MDXXIV' to 1524" do
      num = RomanNumber.new('MDXXIV')
      expect(num.convert).to eq(1524)
    end

    it "converts 'MMMDXXIII' to 3523" do
      num = RomanNumber.new('MMMDXXIII')
      expect(num.convert).to eq(3523)
    end
  end
end
