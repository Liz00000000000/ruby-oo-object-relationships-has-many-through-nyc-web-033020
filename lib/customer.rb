class Customer
<<<<<<< HEAD
    attr_reader :name, :tip
    attr_writer :age
    @@all = [ ]
    def initialize(name, age)
      @name = name
      @age = age
      @tip = tip 
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def new_meal(waiter, total, tip = 0)
      Meal.new(waiter, self, total, tip)
    end
  
    def meals
      Meal.all.select do |meal|
        meal.customer == self
      end
    end
  
    def waiters
      Meal.all.map do |meals|
            if meals.customer == self
              meals.waiter 
            end 
        end.compact!
    end

end
=======
  attr_reader :name, :tip
  attr_writer :age
  @@all = [ ]
  def initialize(name, age)
    @name = name
    @age = age
    @tip = tip 
    @@all << self
  end

  def self.all
    @@all
  end

  def new_meal(waiter, total, tip = 0)
    Meal.new(waiter, self, total, tip)
  end

  def meals
    Meal.all.select do |meal|
      meal.customer == self
    end
  end

  def waiters
    Waiter.all.select do |waiter|
      waiter.customer == self
    end
  end
end
>>>>>>> cbd261811a3d3aac5796501b9c748d421d4060e1
