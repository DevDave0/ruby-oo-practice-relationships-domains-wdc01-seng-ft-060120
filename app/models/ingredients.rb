class Ingredient 

    attr_reader :name, :calorie_count 

    @@all = [] 

    def initialize(name, calorie_count)
        @calorie_count = calorie_count
        @name = name 
        @@all << self
    end

    def self.all
        @@all
    end

    def desserts 
        dessert_ingredients = DessertIngredient.all.select{|di| di.ingredient == self}
        dessert_ingredients.map{|di| di.dessert}
    end 

    def bakeries
        ingredient_bakery = []
        self.desserts.each do |dessert|
            if !ingredient_bakery.include?(dessert.bakery)
                ingredient_bakery << dessert.bakery 
            end 
        end
        ingredient_bakery
    end

    def self.find_all_by_name(ingredient)
        Ingredient.all.select do |ing|
            ing.name.downcase.match?(ingredient.downcase)
        end
    end

end 






# class Ingredients
#     attr_accessor :name, :calories, :dessert, :bakery
#     @@all = []

#     def initialize(name, calorie_count, dessert)
#         @name = name
#         @calories = calorie_count
#         @dessert = dessert
#         @@all << self
#     end 

#     def self.all
#         @@all
#     end 

#     def bakery
#         Desserts.all.select do |dessert|
#             dessert.ingredients == self
#             dessert.bakery
#         end 
#     end 

#     def self.find_all_by_name(ingredient_name)
#         Ingredients.all.select do |ingredient| 
#             if ingredient.name.include?(ingredient_name) == true
#             ingredient
#             end
#         end 
#     end 
# end 
