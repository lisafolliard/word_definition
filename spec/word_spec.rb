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
end
