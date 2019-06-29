class Deck

  attr_reader :cards

  def initialize
    @suit = ["Hearts", "Clubs", "Diamonds", "Spades"]
    @rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]

    @cards = []

    @suit.each { |suit_type|
      @rank.each { |rank_type|
        @cards << Card.new(suit_type, rank_type)
      }
    }
  end

  def choose_card
    @cards.delete_at(rand((@cards.length) - 1))
  end

end

class Card
  attr_accessor :rank, :suit

  def initialize(suit, rank)
    @rank = rank
    @suit = suit
  end

end
