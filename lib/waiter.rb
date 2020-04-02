require 'pry'
class Waiter
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