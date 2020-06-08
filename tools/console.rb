require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



david = Guest.new('david')
billy = Guest.new('billy')
house1 = Listing.new('mansion', "DC")
house2 = Listing.new('condo', 'Seattle')
trip1 = Trip.new(david,house1)
trip2 = Trip.new(david, house2)
trip3 = Trip.new(billy, house1)

print Guest.pro_traveller
0




