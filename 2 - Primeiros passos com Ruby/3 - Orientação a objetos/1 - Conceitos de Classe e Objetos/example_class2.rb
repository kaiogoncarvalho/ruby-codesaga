class Car
  def initialize(manufacturer, model, year)
    @manufacturer = manufacturer
    @model = model
    @year = year
  end
end

car = Car.new('Toyota', 'Corolla', 2018)

puts car