require 'pry'
class Waiter
<<<<<<< HEAD
    attr_reader :name, :customer
    attr_writer :years_of_experience
    @@all = [ ]
      def initialize(name, years_of_experience)
        @name = name
        @years_of_experience = years_of_experience
        @customer = customer
        @@all << self
      end
    
      def self.all
        @@all
      end
    
      def new_meal(customer, total, tip)
        Meal.new(self, customer, total, tip)
      end
    
      def meals
        Meal.all.select do |meal|
          meal.waiter == self
        end
      end
    
       def best_tip
        tips = [ ]
        Meal.all.each do |meal|
            tips << meal.tip 
          end 
        return tips.max 
        end 


      def best_tipper
        Meal.all.each do |meals|
            #binding.pry
            if meals.tip == best_tip 
            return meals.customer 
            end 
            #this did not work with .select 
            #why is that? 
        end 
      end
end
=======
attr_reader :name, :customer
attr_writer :years_of_experience
@@all = [ ]
  def initialize(name, years_of_experience)
    @name = name
    @years_of_experience = years_of_experience
    @customer = customer
    @@all << self
  end

  def self.all
    @@all
  end

  def new_meal(customer, total, tip)
    Meal.new(self, customer, total, tip)
  end

  def meals
    Meal.all.select do |meal|
      meal.waiter == self
    end
  end

  def best_tipper
    highest_tip = Meal.all.tip.max
    binding.pry 

    Customer.all.find do |meal|
      meal.tip == hightest tip
    end
  end
end
>>>>>>> cbd261811a3d3aac5796501b9c748d421d4060e1
