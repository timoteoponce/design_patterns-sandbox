require_relative 'coach'
require_relative 'mechanic'
require_relative 'trip_coordinator'

class Trip
  attr_reader :bicycles, :customers, :vehicle

  def initialize(bicycles, customers, vehicle)
    @bicycles = bicycles
    @customers = customers
    @vehicle = vehicle
  end

  def prepare_trip
    prepare_bicycles
    prepare_customers
    prepare_vehicle
    true
  end

  def prepare_bicycles
    coach = Coach.new
    @bicycles.each do |b|
      coach.prepare_bike(b)
    end
  end

  def prepare_customers
    coordinator = TripCoordinator.new
    @customers.each do |c|
      coordinator.buy_safety_wear(c)
      coordinator.buy_food(c)
    end
  end

  def prepare_vehicle
    mechanic = Mechanic.new
    mechanic.gas_up(@vehicle)
    mechanic.fill_water_tank(@vehicle)
  end
end
