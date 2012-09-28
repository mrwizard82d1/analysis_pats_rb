module Contract
  class Instrument
  end
end


module SimpleContract
  class Contract
    attr_accessor :party, :amount, :price, :instrument

    def initialize(party, amount, price, instrument)
      @party = party
      @amount = amount
      @price = price
      @instrument = instrument
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


module ShortLongContract
  class Contract
    attr_accessor :short_party, :long_party, :amount, :price, :instrument

    def initialize(short_party, long_party, amount, price, instrument)
      @short_party = short_party
      @long_party = long_party
      @amount = amount
      @price = price
      @instrument = instrument
    end
  end

end


