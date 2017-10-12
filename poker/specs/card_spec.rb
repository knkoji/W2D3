require 'rspec'
require 'card'

RSpec.describe Card do
  subject(:card) { Card.new(14, :hearts) }

  describe "#initialize" do
    it "instantiates with a value and a suit" do
      expect(card.value).to eq(14)
      expect(card.suit).to eq(:hearts)
    end

    it "compares equivalencies between cards" do
      card2 = Card.new(14, :hearts)
      expect(card).to eq(card2)
    end
  end



end
