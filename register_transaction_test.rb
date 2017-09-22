require 'minitest/autorun'
require 'minitest/reporters'
require_relative 'cash_register'
require_relative 'transaction'
Minitest::Reporters.use!

class CashRegisterTest < Minitest::Test
  def test_accept_money
    register = CashRegister.new(100)
    transaction = Transaction.new(10)
    transaction.amount_paid = 10

    previous_money = register.total_money
    register.accept_money(transaction)
    current_money = register.total_money

    assert_equal previous_money + 10, current_money
  end

  def test_change
    register = CashRegister.new(100)
    transaction = Transaction.new(10)
    transaction.amount_paid = 20

    assert_equal 10, register.change(transaction)
  end

  def test_give_receipt
    register = CashRegister.new(100)
    transaction = Transaction.new(10)

    assert_output("You've paid $10.\n") do
      register.give_receipt(transaction)
    end
  end
end

class TransactionTest < Minitest::Test
  def test_prompt_for_payment
    transaction = Transaction.new(30)
    input = StringIO.new('30\n')
    output = StringIO.new
    transaction.prompt_for_payment(input:input,output:output)
    assert_equal 30, transaction.amount_paid
  end
end
