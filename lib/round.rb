require ".lib/deck"
require ".lib/card"
require ".guess"


class Round.new
  attr_accessor :deck,
                :guesses,
                :current_card,
                :record_guess,
                :feedback,
                :number_correct,
                :guesses_last_feedback,
                :percent_correct

  def initialize(deck)
    @deck = deck
    @guesses = guesses
    @current_card = current_card
    @record_guess = record_guess
    @feedback = feedback
    @number_correct = number_correct
    @guesses_last_feedback = guesses_last_feedback
    @percent_correct = percent_correct
  end
end

round = Round.new(deck)
