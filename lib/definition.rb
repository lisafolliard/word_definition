class Definition
  @@definitions = []

  define_method(:initialize) do |definitions|
    @definitions = definitions
    @id = @@definitions.length().+(1)
  end

  define_method(:definitions) do
    @definitions
  end

  define_method(:save) do
    @@definitions.push(self)
  end

  define_singleton_method(:all) do
    @@definitions
  end

  define_singleton_method(:clear) do
    @@definitions = []
  end

end
