require 'deck'
require 'rspec'

RSpec.describe Deck do
  subject(:deck) { Deck.new }
  describe '#initialize' do
    it "is an array of cards" do
      expect(deck.cards).to be_an_instance_of(Array)
      expect(deck.cards.all? { |el| el.is_a?(Card) }).to be true
    end

    it "contains 52 cards" do
      expect(deck.cards.length).to eq(52)
    end

    it "contains unique values" do
      expect(deck.cards.uniq.length).to eq(deck.cards.length)
    end
  end
  
end
