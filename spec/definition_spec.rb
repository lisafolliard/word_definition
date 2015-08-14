require('rspec')
require('definition')

  describe('Definition') do
    before() do
      Definition.clear()
    end

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

    describe("id") do
      it('returns the definition id') do
        new_definition = Definition.new("sweet dessert")
        new_definition.save()
        expect(new_definition.id()).to(eq(1))
      end
    end

    describe(".find") do
      it("returns a definition by its id number") do
        new_definition = Definition.new("sweet dessert")
        new_definition.save()
        new_definition2 = Definition.new("green shoes")
        new_definition2.save()
        expect(Definition.find(new_definition.id())).to(eq(new_definition))
      end
    end
  end
