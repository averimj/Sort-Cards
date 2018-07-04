require "./lib/deck"
require "./lib/card"
require "./lib/guess"
require "./lib/round"
require "minitest/autorun"
require "minitest/pride"

class RoundTest < Minitest::Test

  def test_it_exist
    card_1 = Card.new("3", "Hearts")
    card_2 = Card.new("4", "Clubs")
    deck = Deck.new([card_1, card_2])
    round = Round.new(deck)
    assert_instance_of Round, round
  end
end
