class Car
  attr_accessor :manufacturer,:model,:year

  def initialize(manufacturer, model, year)
    @manufacturer = manufacturer
    @model = model
    @year = year
  end
end

# Uso via IRBs
car = Car.new('Toyota', 'Corolla', 2018)
car.manufacturer
car.model = 'Corolla'
puts car.model
