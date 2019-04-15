require "pry"

class Deck

attr_accessor :cards


    def initialize
      rank = %w(2 3 4 5 6 7 8 9 10 J Q K A)
      suit = %w(Hearts Clubs Diamonds Spades)
      @cards = []

       rank.each do |rank|
         suit.each do |suit|
           @cards << Card.new(suit, rank)
         end
       end
    end

    def shuffle
      @cards.shuffle
      @cards
    end

    def choose_card
      self.shuffle.pop
    end

end

class Card

  attr_accessor :rank, :suit

  # @@all = {
  #   :hearts => %w(A 1 2 3 5 6 7 8 9 10 J Q K),
  #   :diamonds =>%w(A 1 2 3 5 6 7 8 9 10 J Q K),
  #   :spades =>%w(A 1 2 3 5 6 7 8 9 10 J Q K),
  #   :clubs =>%w(A 1 2 3 5 6 7 8 9 10 J Q K)
  # }
  #
  # @suit =
  # @card =

  #@@all = []

  def initialize(suit, rank)
    @rank = rank
    @suit = suit
  end

  # def create_card
  #   rank = %w(1 2 3 4 5 6 7 8 9 10 J Q K A)
  #   suit = %w(Hearts Clubs Diamonds Spades)
  #
  #   x = suit.each do |suit|
  #
  #   end
  #   @@all << x

end

# array = []
# rank = %w(1 2 3 4 5 6 7 8 9 10 J Q K A)
# suit = %w(Hearts Clubs Diamonds Spades)
#
#  rank.each do |rank|
#    suit.each do |suit|
#      self.all << Card.new(rank, suit)
#    end
#  end
# deck = Deck.new
#
# binding.pry
#
# puts "hi"
