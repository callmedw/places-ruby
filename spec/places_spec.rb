require 'rspec'
require 'places'

describe(Place) do
  before() do
    Place.clear
  end
  
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

  describe("#save") do
    it("adds individual places to an array of saved places") do
      test_place = Place.new("Orlando, FL")
      test_place.save
      expect(Place.all).to(eq([test_place]))
    end
  end

  describe(".clear") do
    it("empties out all the saved tasks") do
      Place.new("Omaha, NE").save
      Place.clear
      expect(Place.all).to(eq([]))
    end
  end
end
