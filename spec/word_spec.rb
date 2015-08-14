require('rspec')
require('word')

describe('Word') do

  describe('#word') do
    it('lets you add a new word') do
      new_word = Word.new("cruise")
      # new_word.save()
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
end
