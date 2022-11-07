require 'minitest/autorun'
require_relative '../lib/cards/card_processor'

class TestUser < Minitest::Test

    def test_card_payment
        card_processor = CardProcessor.new
        card = Card.new('VISA', 1000)
        card_processor.process(card, 'payment', 300)
        assert_equal(697.0, card.balance)
    end

    def test_card_payment_with_taxes
        card_processor = CardProcessor.new
        card = Card.new('MASTERCARD', 1000)
        card_processor.process(card, 'payment', 300)
        assert_equal(694.0, card.balance)
    end
end