require_relative "card"

class Deck
  attr_reader :card
  def initialize
    @cards = []
    Card::SUITS.each do |suit|
      Card::RANKS.each do |rank|
        @cards.push(Card.new(rank, suit))
      end
    end
    draw
  end

  def cards_left
    @cards.length
  end

  def draw
    @card = @cards.shift
  end

  def shuffle
    @cards.shuffle!
  end
end
