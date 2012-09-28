require_relative '../lib/accountability'
require_relative '../lib/quantity'
require_relative '../lib/contracts'
require 'test/unit'


class TestSimpleContract < Test::Unit::TestCase
  def test_ctor
    party = Accountability::Party.new
    amount = 314.15
    price = Quantity::Money.new(9.265, Currency::USD)
    instrument = Contract::Instrument.new

    long_contract =
      SimpleContract::Long.new(party, amount, price, instrument)
    assert_equal(party, long_contract.party)
    assert_equal(amount, long_contract.amount)
    assert_equal(price, long_contract.price)
    assert_equal(instrument, long_contract.instrument)

    short_contract =
      SimpleContract::Short.new(party, amount, price, instrument)
    assert_equal(party, short_contract.party)
    assert_equal(amount, short_contract.amount)
    assert_equal(price, short_contract.price)
    assert_equal(instrument, short_contract.instrument)
  end
end
