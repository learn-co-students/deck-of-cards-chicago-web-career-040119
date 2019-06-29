class Deck
  attr_reader :cards

  def initialize

    @rank=["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    @suit = ["Hearts", "Clubs", "Diamonds", "Spades"]
    @cards=[]

    @rank.each do |rank_type|
      @suit.each do |suit_type|
        @cards << Card.new(rank_type, suit_type)
      end
    end

  end

    def choose_card
        @cards.delete_at(rand(@cards.length - 1)
    end
end

class Card
  attr_accessor :rank, :suit

  def initialize(suit, rank)
    @rank = rank
    @suit = suit
  end
end
