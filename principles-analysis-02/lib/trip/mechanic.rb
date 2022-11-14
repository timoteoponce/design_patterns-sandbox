class Mechanic
  def gas_up(vehicle)
    puts "[#{self.class}] I'm filling the gas tank for #{vehicle}!"
  end

  def fill_water_tank(vehicle)
    puts "[#{self.class}] I'm filling the water tank for #{vehicle}!"
  end
end
