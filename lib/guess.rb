require 'pry'
class Guess
  attr_reader :card, :response
  def initialize(response, card)
    @card = card
    @response = response
    @feedback = feedback
  end

  def correct?
    if @response == "#{@card.value} of #{@card.suit}"
     true
    else
     false
    end
  end

  def feedback
    if "#{@card.value} of #{@card.suit}" == @response
      "Correct!"
    else
      "Incorrect!"
    end
  end

end
