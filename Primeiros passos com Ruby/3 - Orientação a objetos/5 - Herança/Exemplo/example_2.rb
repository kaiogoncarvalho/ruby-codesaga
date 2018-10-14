class Dog

  attr_reader :breed,:name

  def initialize(breed, name)
    @breed = breed
    @name = name
  end

  def bark
    puts 'Au Au'
  end

  def walk
    puts 'Vamos ! - Au Au'
  end

end

class Labrador < Dog
  attr_reader :name

  def initialize(name)
    @breed = super('Labrador', nil)
    @name = name
  end

  def bark
    puts 'Wolf'
  end

end

labrador = Labrador.new('Chuvisco')
labrador.bark
labrador.walk

puts labrador.breed
puts labrador.name