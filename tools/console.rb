require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



# david = Guest.new('david')
# billy = Guest.new('billy')
# house1 = Listing.new('mansion', "DC")
# house2 = Listing.new('condo', 'Seattle')
# trip1 = Trip.new(david,house1)
# trip2 = Trip.new(david, house2)
# trip3 = Trip.new(billy, house1)

require 'pry'


shilla = Bakery.new('shilla')
breeze = Bakery.new('breeze')

bread = Desserts.new('bread',shilla)
kitkat = Desserts.new('kitkat',breeze)

sugar = Ingredients.new("sugar", 20, bread)
flour = Ingredients.new("flour", 35, bread)
eggs = Ingredients.new('eggs', 50, bread)
chocolate = Ingredients.new('chocolate', 50, kitkat)
chocolate_mousse = Ingredients.new('chocolate mousse', 50, kitkat)

bread.add_ingredient(sugar)
bread.add_ingredient(flour)
bread.add_ingredient(eggs)

kitkat.add_ingredient(chocolate)
kitkat.add_ingredient(chocolate_mousse)

shilla.add_dessert(bread)
breeze.add_dessert(kitkat)


# print bread.ingredients
# print shilla.dessert
# print bread.bakery.name
# print bread.calories

puts shilla.shopping_list

# binding.pry




# print Ingredients.find_all_by_name('chocolate')





