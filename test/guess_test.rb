require "./lib/guess"
require "minitest/autorun"
require "minitest/pride"
require "./lib/card"
require "pry"

class GuessTest < Minitest::Test

  def test_it_exist
    card = Card.new("Ace", "Spades")
    guess = Guess.new("10 of Hearts", card)
    assert_instance_of Guess, guess
  end

  def test_it_can_find_correct_guess
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert_equal true, guess.correct?
  end

  def test_it_feedback
    card = Card.new("10", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert_equal "Correct!", guess.feedback
  end

  def test_it_negative_feedback
    card = Card.new("1", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert_equal "Incorrect!", guess.feedback
  end

  def test_it_can_find_incorrect_guess
    card = Card.new("1", "Hearts")
    guess = Guess.new("10 of Hearts", card)
    assert_equal false, guess.correct?
  end


end
