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


# shilla = Bakery.new('shilla')
# breeze = Bakery.new('breeze')

# bread = Desserts.new('bread',shilla)
# kitkat = Desserts.new('kitkat',breeze)

# sugar = Ingredients.new("sugar", 20, bread)
# flour = Ingredients.new("flour", 35, bread)
# eggs = Ingredients.new('eggs', 50, bread)
# chocolate = Ingredients.new('chocolate', 50, kitkat)
# chocolate_mousse = Ingredients.new('chocolate mousse', 50, kitkat)

# bread.add_ingredient(sugar)
# bread.add_ingredient(flour)
# bread.add_ingredient(eggs)

# kitkat.add_ingredient(chocolate)
# kitkat.add_ingredient(chocolate_mousse)

# bs = DessertIngredient.new(bread,sugar)
# bf = DessertIngredient.new(bread,flour)
# be = DessertIngredient.new(bread,eggs)
# kc = DessertIngredient.new(kitkat,chocolate)
# kcm = DessertIngredient.new(kitkat,chocolate_mousse)
# ks = DessertIngredient.new(kitkat,sugar)


# print bread.ingredients
# print shilla.dessert
# print bread.bakery.name
# print bread.calories

# puts shilla.shopping_list


david = Passenger.new('david')
lou = Passenger.new('lou')

billy = Driver.new('billy')
frank = Driver.new('frank')

ride1 = Ride.new(david,billy,50.0)
ride2 = Ride.new(david,frank,55.0)
ride3 = Ride.new(lou,frank,60.0)

# binding.pry
# 0
print Ride.average_distance


# 2.times do 
#   Bakery.new(Faker::Kpop.i_groups)
# end

# 10.times do 
#   Dessert.new(Faker::Dessert.variety, Bakery.all.sample) #baker.all.sample pulls a random one
# end

# chocolate = Ingredient.new("chocolate", 80)
# peaches = Ingredient.new('peach', 45)
# water = Ingredient.new('water', 0)
# sugar = Ingredient.new('sugar',100)
# salt = Ingredient.new('salt',8)
# eggs = Ingredient.new('egg',33)
# chocolate_chips = Ingredient.new('chocolate chips', 42)
# powdered_sugar = Ingredient.new('powdered sugar', 75)
# milk = Ingredient.new('milk', 30)

# DessertIngredient.new(Dessert.all.first, chocolate)
# DessertIngredient.new(Dessert.all.first, eggs)
# DessertIngredient.new(Dessert.all.first, milk)
# DessertIngredient.new(Dessert.all.first, salt)
# DessertIngredient.new(Dessert.all.first, water)
# DessertIngredient.new(Dessert.all[1], water)
# DessertIngredient.new(Dessert.all[1], salt)
# DessertIngredient.new(Dessert.all[1], milk)
# DessertIngredient.new(Dessert.all.last, milk)
# DessertIngredient.new(Dessert.all.last, peaches)
# DessertIngredient.new(Dessert.all.last, salt)







