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

    describe(".all") do
      it("is empty at first") do
        expect(Definition.all()).to(eq([]))
      end
    end

    describe("#save") do
      it("adds a definition to the array") do
        new_word = Definition.new("sweet dessert")
        new_word.save()
        expect(Definition.all()).to(eq([new_word]))
      end
    end

    describe(".clear") do
      it('empties out all of the saved words') do
        Definition.new("float").save()
        Definition.clear()
        expect(Definition.all()).to(eq([]))
      end
    end

  end
