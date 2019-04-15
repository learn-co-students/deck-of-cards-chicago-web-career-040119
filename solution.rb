require 'pry'
class Deck
  attr_reader :cards


  def initialize
    @cards = []
    @suit = %w(Hearts Clubs Diamonds Spades)
    @rank = %w(A 2 3 4 5 6 7 8 9 10 J Q K)
    @suit.each do |suit|
      @rank.each do |rank|
        @cards << Card.new(suit, rank)
      end
    end

    @cards
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
# ""
    # @cards = []

    # @suit = %w(Hearts Clubs Diamonds Spades)
    # @rank = %w(A 2 3 4 5 6 7 8 9 10 J Q K)

    # @suit.each do |suit|
    #   @rank.each do |rank|
    #     @cards << [suit, rank]
    #   end
    # end

    # @cards
