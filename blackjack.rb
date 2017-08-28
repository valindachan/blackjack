require_relative "deck"
require_relative "player"

class Blackjack
  def initialize
    @cash = 100
    @score = 0
    welcome
    get_yes_or_no
  end

  def welcome
    puts "Hello and welcome to the game of blackjack! Let's begin."
    puts
    puts "You have $#{@cash} and bet $10."
    puts "You have a 9 and a 8 in your hand. Your total is 15."
  end

  def get_yes_or_no
    while true
      print "Do you want to (h)it or (s)tand? "
      answer = gets.chomp.downcase
      if answer[0] == "h"
        puts "You hit. Your total is #{@score}."
        return true
      elsif answer[0] == "s"
        puts "You stand. Your total is #{@score}."
        return false
      end
      puts "That is not a valid answer! Do you want to (h)it or (s)tand?"
    end
    # loop until you get a good answer and return
  end
end

blackjack = Blackjack.new
deck = Deck.new
card = deck.card.rank
playertwo = Player.new(card)
p playertwo
