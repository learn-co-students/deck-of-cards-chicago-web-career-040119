require 'pry'
class Deck

  attr_reader :cards

    def initialize
      @suit = ["Hearts", "Clubs", "Diamonds", "Spades"]
      @rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]

      @cards = []
        @rank.each do |rank|
          @suit.each do |suit|
            @cards << Card.new(rank, suit)
         end
      end
    end

    def choose_card
      # card_array = @cards
      # choice_of_card = card_array[rand(card_array.length)]
      # @cards.delete(choice_of_card)
      @cards.pop()
    end

 end

 class Card

  attr_accessor :suit, :rank

    def initialize(suit, rank)
      @suit = suit
      @rank = rank
    end

end
