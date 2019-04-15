require 'pry'
class Deck
  attr_reader :cards

  def initialize
    @suit = %w(Hearts Clubs Diamonds Spades)
    @rank = %w(A 2 3 4 5 6 7 8 9 10 J Q K)
    @cards = build_deck(@suit, @rank)
  end

  def build_deck(suits, ranks)
    output = []
    suits.each do |suit|
      ranks.each { |rank| output << Card.new(suit, rank) }
    end
    output
  end

  def choose_card
    @cards.slice!(@cards.index(@cards.sample))
  end
end

class Card
  attr_reader :suit, :rank
  def initialize(suit, rank)
    @suit = suit
    @rank = rank
    self
  end
end
# deck = Deck.new
# binding.pry
# ''
