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
                :percent_correct,
                :round

  def initialize(deck)
    @deck = deck
    @guesses = []
    @current_card = current_card
    @feedback = feedback
    @number_correct = number_correct
    @percent_correct = percent_correct
    @round = round
  end

  def current_card
    @deck.cards.first
  end

  def record_guess(hash)
  guess_string = "#{hash[:value]} of #{hash[:suit]}"
  guess = Guess.new(guess_string, current_card)
  @guesses << guess
  guess
  end

  def count_guesses
    @round.guesses.count
  end
  
end
