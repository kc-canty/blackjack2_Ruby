require_relative 'card'

class Deck
  attr_accessor :cards
  def initialize
    @cards = []
    Suits.each do |suit|
      Ranks.each do |rank|
        @cards << Card.new(rank, suit)
      end
    end
  end
  def shuffle!
    @cards.shuffle!
  end
  def draw
    @cards.pop
  end
  def cards_left
    @cards.length
  end
end