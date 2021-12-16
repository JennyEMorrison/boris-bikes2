require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20
  def initialize 
    @bikes = []
  end

  def release_bike
    #Bike.new
    fail 'No bikes available' if empty?
    @bikes.pop
  end

  def dock(bike)
    fail "docking station full" if full?
  @bikes << bike
  end

  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end
#  def bike
# @bike
# end
  
 # attr_reader :bike

end
