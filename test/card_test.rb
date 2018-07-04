require "./lib/classCard.rb"
require "minitest/autorun"
require "minitest/pride"

class SortCardsTest < Minitest::Test

  def test_it_exist
    card = Card.new("Ace", "Spades")
    assert_instance_of Card, card
  end

  def test_it_value
    card = Card.new("Ace", "Spades")
    assert_equal "Ace", card.value
  end
