Suits = ['♦', '♣', '♠', '♥']
Ranks = ["1","2","3","4","5","6","7","8","9","10","11","12","13"]
$d = []

class Card
  include Enumerable
    @@suit_value = Hash[ Suits.each_with_index.to_a ]
    @@rank_value = Hash[ Ranks.each_with_index.to_a ]

    attr_reader :rank, :suit
    attr_accessor :value


    def initialize(rank, suit)
        @rank = rank
        @suit = suit
    end

    def value
      value = case @rank.to_i
        when 1
          11
        when 2..10
          @rank
        when 11..13
          10
        else
          nil
      end
    end

    def display_rank
      case @rank
        when "11"
          "Jack"
        when "12"
          "Queen"
        when "13"
          "King"
        when "1"
          "Ace"
        else
          @rank
        end
    end

    def to_s
      "#{display_rank} of #{@suit}, value #{value}"
    end
end