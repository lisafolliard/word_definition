require('rspec')
require('definition')

  describe('Definition') do








    describe('#definition') do
      it('returns the definition of a word') do
        new_definition = Definition.new("a trip or journey in a car")
        # new_definition.save()
        expect(new_definition.definition()).to(eq("a trip or journey in a car"))
      end
    end
  end



    # describe('#definition') do
    #   it('lets you add a definition') do
    #     new_word = Word.new("sail about in an area")
    #     # new_word.save()
    #     expect(new_word.definition()).to(eq("sail about in an area"))
    #   end
    # end
