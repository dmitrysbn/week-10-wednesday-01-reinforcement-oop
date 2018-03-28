class Location

  attr_accessor :name

  def initialize(name)
    @name = name
  end

end

class Trip

  attr_accessor :destinatons

  def initialize
    @destinations = []
  end

  def add_location(location)
    @destinations << location
  end

  def adventure
    puts "Began trip."

    @destinations.each_with_index do |destination, i|
      if i == @destinations.length - 1
        puts "Ended trip."
      else
        puts "Travelled from #{@destinations[i].name} to #{@destinations[i+1].name}."
      end
    end
  end

end

destinations = ["Toronto", "Ottawa", "Montreal", "Quebec City", "Halifax", "St. John's"]

trip = Trip.new

destinations.each do |destination|
  trip.add_location(Location.new(destination))
end

trip.adventure
