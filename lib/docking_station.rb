require_relative 'bike.rb'

class DockingStation
  attr_reader :bikes
  def release_bike
    Bike.new
  end
  def dock(bike)
    @bikes = bike
  end
end
