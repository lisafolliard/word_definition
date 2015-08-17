class Word
  @@words = []

  define_method(:initialize) do |word|
    @word = word # changed to make variable reflect what it's holding
    @id = @@words.length().+(1)
    @definitions = [] # changed to make variable reflect what it's holding
  end

  define_method(:word) do
    @word
  end

  define_method(:add_definition) do |definition|
    @definitions.push(definition)
  end

  define_method(:save) do
    @@words.push(self)
  end

  define_method(:id) do
    @id
  end

  define_method(:definitions) do
    @definitions
  end

  define_singleton_method(:all) do
    @@words
  end

  define_singleton_method(:clear) do
    @@words = []
  end

  define_singleton_method(:find) do |id|
    new_word = nil
    @@words.each() do |word|
      if word.id().eql?(id)
        new_word = word
      end
    end
    new_word
  end
end
