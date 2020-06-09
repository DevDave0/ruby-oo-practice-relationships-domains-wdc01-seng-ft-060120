class Bakery
    attr_accessor :desserts, :name

    @@all = []

    def initialize(name)
        @name = name
        @desserts = []
        @@all << self
    end 

    def add_dessert(dessert)
        @desserts << dessert
    end 

    def ingredients
        self.desserts.map{|dessert|dessert.ingredients}
    end

    # Still need to finish avg calories. to solve, we want to find the total 
    # sum of the calories then divide it by the count of all desserts. In our case there is only 1 dessert.
    # dessert.calories/dessert.all.count

    def average_calories
        ingredients.map{|ingredients|ingredients}
    end 

    

    def self.all 
        @@all
    end 

    # use the array that has all of the ingredients and match the ones that match with our bakery
    # once you match the ones with our bakery, return the names in a new array

    def shopping_list
        result = Ingredients.all.select do |ingredient|
            ingredient.bakery == self    
        end
        result.map do |ingredient|
                return ingredient.name
            end
    end




end 