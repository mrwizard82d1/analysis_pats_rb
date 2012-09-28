require_relative '../lib/accountability'
require_relative '../lib/quantity'
require_relative '../lib/contracts'
require 'test/unit'


class TestContract < Test::Unit::TestCase
  attr_accessor :party, :amount, :price, :instrument
  attr_accessor :short_party, :long_party

  def setup
    @party = Accountability::Party.new("Sean Fernandez")
    @short_party = Accountability::Party.new("Julieta Costa")
    @long_party = Accountability::Party.new("Oliver Nguyen")
    @amount = 314.15
    @price = Quantity::Money.new(9.265, Currency::USD)
    @instrument = Contract::Instrument.new
  end
end


class TestShortLongContract < TestContract
  def test_ctor
    contract = Contract::ShortLong.new(short_party, long_party,
                                       amount, price, instrument)

    assert_equal(short_party, contract.short_party)
    assert_equal(long_party, contract.long_party)
    assert_equal(amount, contract.amount)
    assert_equal(price, contract.price)
    assert_equal(instrument, contract.instrument)
  end
end


class TestSimpleContract < TestContract
  def test_ctor
    long_contract =
      Contract::Simple::Long.new(party, amount, price, instrument)
    assert_equal(party, long_contract.party)
    assert_equal(amount, long_contract.amount)
    assert_equal(price, long_contract.price)
    assert_equal(instrument, long_contract.instrument)

    short_contract =
      Contract::Simple::Short.new(party, amount, price, instrument)
    assert_equal(party, short_contract.party)
    assert_equal(amount, short_contract.amount)
    assert_equal(price, short_contract.price)
    assert_equal(instrument, short_contract.instrument)
  end
end
