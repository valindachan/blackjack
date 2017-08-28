require_relative "card"

class Player
  attr_reader :hand

  # create new instance of hand but it's empty
  def initialize(card)
    @card = card
    @hand = []
    add_card_to_hand(card)
  end
  #
  # Method = hit
  # Get a card from deck and append it to your hand
  def add_card_to_hand(card)
    @hand << card
  end


# Method = value
# Sums all value in my hand
#
end

# player = Player.new()
# p player.hand
