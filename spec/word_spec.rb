require('rspec')
require('word')

describe('Word') do
  before() do
    Word.clear()
  end

  describe('#word') do
    it('lets you add a new word') do
      new_word = Word.new("cruise")
      new_word.save()
      expect(new_word.word()).to(eq("cruise"))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Word.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a word to the array of saved words") do
      new_word = Word.new("drive")
      new_word.save()
      expect(Word.all()).to(eq([new_word]))
    end
  end

  describe(".clear") do
    it('empties out all of the saved words') do
      Word.new("float").save()
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end

  describe("#id") do
    it('returns the id of the word') do
      new_word = Word.new("clue")
      expect(new_word.id()).to(eq(1))
    end
  end

  describe(".find") do
    it("returns a word by its id number") do
      new_word = Word.new("shoe")
      new_word.save()
      new_word2 = Word.new("cat")
      new_word2.save()
      expect(Word.find(new_word.id())).to(eq(new_word))
    end
  end

end
