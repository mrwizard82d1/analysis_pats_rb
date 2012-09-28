module Contract
  class Instrument
  end
end


module SimpleContract
  class Contract
    attr_accessor :party, :amount, :price, :instrument

    def initialize(party, amount, price, instrument)
      self.party = party
      self.amount = amount
      self.price = price
      self.instrument = instrument
    end
  end

  class Long < Contract
    def initialize(party, amount, price, instrument)
      super(party, amount, price, instrument)
    end
  end

  class Short < Contract
    def initialize(party, amount, price, instrument)
      super(party, amount, price, instrument)
    end
  end
end
