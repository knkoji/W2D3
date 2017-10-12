class Card

  attr_reader :value, :suit
  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def ==(card)
    self.value == card.value && self.suit == card.suit
  end

end
