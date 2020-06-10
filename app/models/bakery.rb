class Bakery

    attr_reader :name 

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end 

    def desserts
        Dessert.all.select{|dessert| dessert.bakery == self}
    end

    def ingredients
        bakery_ingredients = []
        self.desserts.each do |dessert|
            # for each dessert we want to get all ingredients
            dessert.ingredients.each do |ingredient|
                # if bakery_ingredients includes this ingredient do nothing
                # if bakery ingredients does not include this ingredient, push it into bakery_ingredients
                if !bakery_ingredients.include?(ingredient)
                    bakery_ingredients << ingredient 
                end 
            end
        end
        bakery_ingredients

        # bakery_ingredients = self.desserts.map do |dessert|
        #     dessert.ingredients
        # end
        # bakery_ingredients.flatten!.uniq!    <<<< another way of doing this. 
    end


    def average_calories
        all_calories = self.desserts.map do |dessert|
            dessert.calories
        end
        # find average of all_calories
        all_calories.sum/all_calories.length
    end

    def shopping_list
        all_ingredients = self.ingredients.map{|ing|ing.name}
        "Shopping List: #{all_ingredients.join(', ')}."
    end 

end 




# class Bakery
#     attr_accessor :desserts, :name

#     @@all = []

#     def initialize(name)
#         @name = name
#     end 

#     def desserts
#         Desserts.all.select do |desserts|
#             dessert.bakery == self
#         end
#     end

#     def ingredients
#         match = DessertIngredients.all.select do |join_record|
#             join_record.bakery == self
#         end
#         match.map{|record|record.ingredients}
#     end

#     def average_calories
#         ingredients.calories.sum/(ingredients.count)
#     end 

#     def self.all 
#         @@all
#     end 

#     def shopping_list
#         self.ingredients.name
#     end

# end 