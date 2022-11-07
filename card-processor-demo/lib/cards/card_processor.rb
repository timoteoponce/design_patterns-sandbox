
class Card
    attr_accessor :id, :balance

    def initialize(id, balance)
        @id = id
        @balance = balance
    end

end

class CardProcessor

    @@transaction_list = []

    @@card_fees = {
        "VISA" => 0.01,
        "MASTERCARD" => 0.02,
    }

    def process(card, description, amount)
        puts "tax fee '#{@@card_fees}' '#{card.id}' '#{@@card_fees[card.id]}'"
        tax_fee = @@card_fees[card.id]
        card.balance = card.balance - (amount + (tax_fee * amount))
        @@transaction_list.push({:id => card.id, :description => description, :amount => amount})
    end
end

