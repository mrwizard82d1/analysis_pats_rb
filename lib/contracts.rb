module Contract
  class Contract
    attr_accessor :amount, :price, :instrument
    
    def initialize(amount, price, instrument)
      @amount = amount
      @price = price
      @instrument = instrument
    end
  end

  module Simple

    class SimpleBase < Contract
      attr_accessor :party

      def initialize(party, amount, price, instrument)
        super(amount, price, instrument)
        @party = party
      end
    end

    class Long < SimpleBase
      def initialize(party, amount, price, instrument)
        super(party, amount, price, instrument)
      end
    end

    class Short < SimpleBase
      def initialize(party, amount, price, instrument)
        super(party, amount, price, instrument)
      end
    end
  end

  class ShortLong < Contract
    attr_accessor :short_party, :long_party

    def initialize(short_party, long_party, amount, price, instrument)
      super(amount, price, instrument)
      @short_party = short_party
      @long_party = long_party
    end
  end

  class Instrument
  end
end


module SimpleContract
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


