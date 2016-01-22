require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bikes, :capacity
   
  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = 1
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
    @bikes.size >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end
end