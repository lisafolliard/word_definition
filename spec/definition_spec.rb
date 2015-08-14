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
 
