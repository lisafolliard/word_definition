class Definition

  define_method(:initialize) do |definitions|
    @definitions = definitions
  end

  define_method(:definitions) do
    @definitions
  end
end
