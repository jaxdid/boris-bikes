require_relative 'bike'

class DockingStation
  attr_reader :bike

  def dock(docked_bike)
    fail 'Docking station full' if @bike
    @bike = docked_bike
  end

	def release_bike
    fail 'No bikes available' unless @bike
    @bike
	end
end