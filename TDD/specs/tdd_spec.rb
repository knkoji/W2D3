require 'tdd'
require 'rspec'

RSpec.describe Array do
  subject(:arr) { Array.new }
  let(:arr1) { [5, 2, 1, 2, 3, -1, 3] }

  describe "#my_uniq" do
    it "returns an array" do
      expect(arr1.my_uniq).to be_a(Array)
    end

    it "returns an array of the elements in the order they appear" do
      expect(arr1.my_uniq).to eq([5, 2, 1, 3, -1])
      # expect(arr.my_uniq).to not_eq([2, 1, 3, 5])
    end

    it "returns an array of unique values" do
      expect(arr1.my_uniq.count(3)).to eq(1)
    end
  end

  describe "#two_sum" do
    it "returns an array of arrays of length 2" do
      expect(arr1.two_sum.all? {|el| el.length == 2}).to be true
    end

    it "return an array of arrays whose elements sum to 0" do
      sums = arr1.two_sum
      expect(arr1[sums[0][0]] + arr1[sums[0][1]]).to eq(0)
    end

    it "returns an array of arrays which are sorted" do
      sums = arr1.two_sum
      expect(sums[0][0]).to be < sums[0][1]
    end
  end

  describe "#my_transpose" do
    let(:trans) { [[0,1,2], [3,4,5], [6,7,8]] }

    it "returns an array of the same length" do
      expect(trans.my_transpose.length).to eq(trans.length)
    end

    it "returns an array with same middle values" do
      new_trans = trans.my_transpose
      expect(new_trans[0][0]).to eq(trans[0][0])
    end

    it "transposes the outer values across the middle line" do
      new_trans = trans.my_transpose
      expect(new_trans[0][1]).to eq(trans[1][0])
    end
  end

end
