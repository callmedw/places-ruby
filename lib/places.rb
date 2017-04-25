class Place
  @@places_array = []

  def initialize (destination)
    @destination = destination
  end

  def destination
    @destination
  end

  def self.all
    @@places_array
  end

  def save
    @@places_array.push(self)
  end

  def self.clear
    @@places_array = []
  end

end
