# Spec for Robot movement test cases just for fun
require './robots'
RSpec.describe Movements do
  describe "Case 1" do
    it "Returns false for case 1" do
      movements = Movements.new
      expect(movements.path_finder("LLLLRRRRRUUDDUUDDDD")).to eq(false)
    end
  end

  describe "Case 2" do
    it "Returns true for case 2" do
      movements = Movements.new
      expect(movements.path_finder("LURD")).to eq(true)
    end
  end

  describe "Case 3" do
    it "Returns true for case 3" do
      movements = Movements.new
      expect(movements.path_finder("LR")).to eq(true)
    end
  end

  describe "Case 4" do
    it "Returns true for case 4" do
      movements = Movements.new
      expect(movements.path_finder("UD")).to eq(true)
    end
  end

  describe "Case 5" do
    it "Returns true for case 5" do
      movements = Movements.new
      expect(movements.path_finder("LRRRLLUUUDDD")).to eq(true)
    end
  end

  # Last case is failing, trying to understand why.
  describe "Case 6" do
    it "Returns true for case 6" do
      movements = Movements.new
      expect(movements.path_finder("LRRRLLUUUDDDDDD")).to eq(false)
    end
  end
end
