class Player
  attr_accessor :hand, :hand_value, :ace_count, :money
  def initialize
      @hand = []
      @hand_value = 0
      @money = 100
      @ace_count = ace_count
      2.times do
        card = $d.draw
        @hand_value == 0 ? @hand_value = card.value.to_i : @hand_value += card.value.to_i
        @hand << card
      end
  end

  def hit
    card = $d.draw
    @hand_value == 0 ? @hand_value = card.value.to_i : @hand_value += card.value.to_i
    @hand << card
  end

  def switch_ace
    while @hand_value > 21 && @ace_count > 0
      @ace_count -= 1
      @hand_value -= 10
    end
  end

  def set_money

  end

  def to_s
    puts "#{@hand[0].to_s}, and #{@hand[1]}, total value #{@hand_value}"
  end
end