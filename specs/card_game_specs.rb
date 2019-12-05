require 'minitest/autorun'
require 'minitest/reporters'
require_relative "../card_game.rb"
require_relative "../card.rb"

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class CardGameTest < Minitest::Test

  def setup
    @card1 = Card.new("Hearts", 1)
    @card2 = Card.new("Spades", 3)
    @card3 = Card.new("Clubs", 5)
    @card4 = Card.new("Diamonds", 9)
  end

  def test_checkforace_is_ace
    result = CardGame.checkforAce(@card1)
    assert_equal(true, result)
  end

  def test_checkforace_is_not_ace
    result = CardGame.checkforAce(@card2)
    assert_equal(false, result)
  end

  def test_highest_card_card_2
    result = CardGame.highest_card(@card3, @card4)
    assert_equal(@card4, result)
  end

  def test_highest_card_card_1
    result = CardGame.highest_card(@card3, @card1)
    assert_equal(@card3, result)
  end

  def test_cards_total
    result = CardGame.cards_total([@card1, @card2, @card3])
    assert_equal("You have a total of 9", result)
  end

end
