require "./lib/deck"
require "./lib/card"
require "./lib/guess"

class Round
  attr_accessor :deck,
                :guesses,
                :current_card,
                :record_guess,
                :feedback,
                :number_correct,
                :percent_correct

  def initialize(deck)
    @deck = deck
    @guesses = []
    @current_card = current_card
    @record_guess = record_guess
    @feedback = feedback
    @number_correct = number_correct
    @percent_correct = percent_correct
  end

  def current_card
    @deck.cards.first
  end
end
