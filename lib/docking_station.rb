require_relative 'bike'

class DockingStation
  attr_reader :bike

  def dock(docked_bike)
    @bike = docked_bike
  end

	def release_bike
    fail 'No bikes available' unless @bike
    #if @bike
    #  @bike
    #else
    #  fail 'No bikes available'
    #end
	end
end