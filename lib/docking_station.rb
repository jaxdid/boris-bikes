require_relative 'bike'

class DockingStation
  attr_reader :bikes
  def initialize
    @bikes = []
  end

  def dock(docked_bike)
    fail 'Docking station full' if full?
    @bikes << docked_bike
    @bikes.last
  end

	def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
	end

  private

  def full?
    @bikes.size >= 20
  end

  def empty?
    @bikes.empty?
  end
end