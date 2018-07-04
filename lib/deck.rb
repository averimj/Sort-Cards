require "./lib/card"

class Deck
  attr_accessor :cards,
                :count

  def initialize(cards)
    @cards = cards
    @count = cards.count
  end
end
