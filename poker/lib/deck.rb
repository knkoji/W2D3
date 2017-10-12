require_relative 'card'

class Deck

  SUITS = [:hearts, :clubs, :spades, :diamonds]
  VALUES = (2..14).to_a

  attr_reader :cards
  def initialize
    @cards = []
    SUITS.each do |suit|
      VALUES.each do |value|
        @cards << Card.new(value, suit)
      end
    end

  end



end
