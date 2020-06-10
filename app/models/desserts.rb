class Dessert 
    attr_reader :name, :bakery

    @@all = []

    def initialize(name, bakery)
        @name = name
        @bakery = bakery
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredients
        dessert_ingredients = DessertIngredient.all.select do |di|
            di.dessert == self
        end
        dessert_ingredients.map{|di| di.ingredient}
    end

    def calories 
        dessert_ingredients_calories = self.ingredients.map do |ing|
            ing.calorie_count
        end
        dessert_ingredients_calories.sum
    end

end





# class Desserts
#     attr_accessor :name, :ingredients, :bakery
#     @@all = []

#     def initialize(name, bakery)
#         @name = name
#         @ingredients = []
#         @bakery = bakery
#         @@all << self
#     end 

#     # def calories
#     #     ingred = Ingredients.all.select do |ingredients|
#     #         ingredients.dessert == self
#     #     end 
#     #     ingred.select do |ing|
#     #         ing.calories
#     #     end 
#     # end 

#     # still need to finish calories.

#     def calories
#         result = 0
#         Ingredients.all.select do |ingredient| 
#             if ingredient.dessert == self
#             cal_num = ingredient.calories
#             result += cal_num
#             end 
#             result
#         end 
#     end 



#     def add_ingredient(ingredient)
#         @ingredients << ingredient
#     end 

#     def self.all
#         @@all
#     end 

    
# end