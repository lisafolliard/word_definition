require('rspec')
require('definition')

  describe('Definition') do

    describe('#definitions') do
      it('lets you add descriptions to a definition') do
        new_definition = Definition.new("a trip or journey in a car")
        # new_definition.save()
        expect(new_definition.definitions()).to(eq("a trip or journey in a car"))
      end
    end
  end
