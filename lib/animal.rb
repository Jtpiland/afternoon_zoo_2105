class Animal
  attr_reader :kind, :weight, :age
  def initialize(kind, weight, age)
    @kind = kind
    @weight = "#{weight} pounds"
    @age = "#{age} weeks"
  end

  def age_in_days
    @age.to_i * 7
    end

  def feed!(pounds)
    @weight.to_i += 1
    @weight
  end
end
