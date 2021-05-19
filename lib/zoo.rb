class Zoo
  attr_reader :name, :street, :city, :state, :zip_code, :inventory, :animal_count

  def initialize(name, street, city, state, zip_code)
    @name = name
    @street = street
    @city = city
    @state = state
    @zip_code = zip_code
    @inventory = []
    @animal_count = 0
  end

  def address
    "#{@street} #{@city}, #{@state} #{@zip_code}"
  end

  def add_animal(animal)
    @inventory << animal
  end

  def animal_count
    @inventory.length
  end

  def animals_older_than(age)
    old_animals = []
    @inventory.each do |animal|
      old_animals << if animal.age.to_i > age
      end
    end
    old_animals
  end

  def total_weight_of_animals
    total_weight = 0
    @inventory.each do |animal|
      total_weight + animal.weight.to_i
    end
    total_weight
  end

  def details
    detail_hash = {
      "total_weight" => total_weight_of_animals,
      "street_address" => address
    }
  end 



  end





end
