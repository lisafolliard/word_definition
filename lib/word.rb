class Word
  @@words = []

  define_method(:initialize) do |definition|
    @definition = definition
    @id = @@words.length().+(1)
    @words = []
  end

  define_method(:definition) do
    @definition
  end

  define_method(:add_definition) do |definition|
    @words.push(definition)
  end

  define_method(:save) do
    @@words.push(self)
  end

  define_method(:id) do
    @id
  end

  define_method(:words) do
    @words
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
