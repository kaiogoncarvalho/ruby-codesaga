class Car
  def initialize(manufacturer, model, year)
    @manufacturer = manufacturer
    @model = model
    @year = year
  end

  def model
    return @model
  end

  def model=(value)
    @model = value
  end

end

polo = Car.new('Volkswagen', 'Novo Polo', 2019)
puts polo.model

polo.model = 'Polo'
puts polo.model