class Car
  attr_accessor :car_brand, :vehicle_type

  def initialize(car_brand, vehicle_type)
    self.car_brand = car_brand
    self.vehicle_type = vehicle_type
  end

  def car_generator
    puts "Congratulation!, You just won a brand new #{self.car_brand.sample} #{self.vehicle_type.sample}!"
  end
end

array = Car.new(['Chevy', 'Ford', 'Dodge', 'Toyota', 'Audi', 'BMW', 'Volkswagen', 'Lamborghini', 'Ferarri', 'Mclaren', 'Porsche'], ['Coupe', 'Sedan', 'Hatchback', 'Truck', 'SUV', 'Minivan', 'Van', 'Electric Car', 'Mid-engine Car', 'Convertible', 'Crossover'])

array.car_generator