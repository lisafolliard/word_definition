require('rspec')
require('word')
require('definition')

describe('Word') do
  before() do
    Word.clear()
  end

  describe('#definition') do
    it('lets you add a new definition') do
      new_word = Word.new("cruise around")
      new_word.save()
      expect(new_word.definition()).to(eq("cruise around"))
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

  describe('#add_definition') do
    it('adds a new definition to a word') do
      test_word = Word.new("drive")
      new_definition = Definition.new("a trip or journey in a car")
      test_word.add_definition(new_definition)
      expect(test_word.words()).to(eq([new_definition]))
    end
  end





end
