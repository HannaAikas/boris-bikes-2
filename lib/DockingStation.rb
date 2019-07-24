require_relative 'bike'

class DockingStation

  attr_reader :bike

  def release_bike
    bike = Bike.new
  end
  def dock_bike(bike)
    @bike = bike
  end
  def bike_check
    @bike
  end
end
