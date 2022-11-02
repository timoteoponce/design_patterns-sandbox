class Account
  attr_accessor :debits, :credits, :fees, :balance

  def initialize(debits, credits, fees, balance)
    @debits = debits
    @credits = credits
    @fees = fees
    @balance = balance
  end
end

def print_balance(account)
  printf "Debits:  %10.2f\n", account.debits
  printf "Credits: %10.2f\n", account.credits
  if account.fees < 0
    printf "Fees:    %10.2f-\n", -account.fees
  else
    printf "Fees:    %10.2f\n", account.fees
  end
  printf "#{'-' * 20}\n"
  if account.balance < 0
    printf "Balance: %10.2f-\n", -account.balance
  else
    printf "Balance: %10.2f\n", account.balance
  end
end

account = Account.new(credits = 540.5, debits = 1500.0, fees = 14.0, balance = 310.0)
print_balance(account)
