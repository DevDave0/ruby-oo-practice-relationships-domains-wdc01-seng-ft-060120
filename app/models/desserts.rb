class Desserts
    attr_accessor :name, :ingredients, :bakery
    @@all = []

    def initialize(name, bakery)
        @name = name
        @ingredients = []
        @bakery = bakery
        @@all << self
    end 

    # def calories
    #     ingred = Ingredients.all.select do |ingredients|
    #         ingredients.dessert == self
    #     end 
    #     ingred.select do |ing|
    #         ing.calories
    #     end 
    # end 

    # still need to finish calories.

    def calories
        result = 0
        Ingredients.all.select do |ingredient| 
            if ingredient.dessert == self
            cal_num = ingredient.calories
            result += cal_num
            end 
            result
        end 
    end 



    def add_ingredient(ingredient)
        @ingredients << ingredient
    end 

    def self.all
        @@all
    end 

    
end