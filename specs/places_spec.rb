require 'rspec'
require 'places'

describe(Place) do
  describe('#destination') do
    it("let's you give it a new destination description") do
      test_place = Place.new("Dublin, Ireland")
      expect(test_place.destination()).to(eq("Dublin, Ireland"))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Place.all()).to(eq([]))
    end
  end

end
