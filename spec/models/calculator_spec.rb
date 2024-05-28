require 'rails_helper'

RSpec.describe Calculator, type: :model do
  describe ".add" do
    it "returns 0 for an empty string" do
      expect(Calculator.add("")).to eq(0)
    end

    it "returns the number itself for a single number string" do
      expect(Calculator.add("1")).to eq(1)
    end

    it "returns the sum of numbers for a comma-separated string" do
      expect(Calculator.add("1,5")).to eq(6)
    end

    it "returns the sum of numbers for any amount of numbers" do
      expect(Calculator.add("1,2,3,4,5")).to eq(15)
      expect(Calculator.add("10,20,30,40,50")).to eq(150)
      expect(Calculator.add("2,4,6,8,10,12")).to eq(42)
    end

    it "allows new lines between numbers and returns the sum" do
      expect(Calculator.add("1\n2,3")).to eq(6)
      expect(Calculator.add("5\n10\n15")).to eq(30)
      expect(Calculator.add("2\n4\n6\n8")).to eq(20)
    end
  end
end
