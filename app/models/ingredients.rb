class Ingredients
    attr_accessor :name, :calories, :dessert, :bakery
    @@all = []

    def initialize(name, calorie_count, dessert)
        @name = name
        @calories = calorie_count
        @dessert = dessert
        @@all << self
    end 

    def self.all
        @@all
    end 

    def bakery
        Desserts.all.select do |dessert|
            dessert.ingredients == self
            dessert.bakery
        end 
    end 

    def self.find_all_by_name(ingredient_name)
        Ingredients.all.select do |ingredient| 
            if ingredient.name.include?(ingredient_name) == true
            ingredient
            end
        end 
    end 
end 
