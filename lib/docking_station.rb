require_relative 'bike'

class DockingStation
  attr_reader :bikes
  def initialize
    @bikes = []
  end

  def dock(docked_bike)
    fail 'Docking station full' if @bikes.size >= 20
    @bikes << docked_bike
    @bikes.last
  end

	def release_bike
    fail 'No bikes available' if @bikes.size == 0
    @bikes.pop
	end
end