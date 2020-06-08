
class Guest
    attr_reader :name 
    def initialize(name)
        @name = name
    end 

    def listings
        trip = Trip.all.select{|trip|trip.guest == self}
        trip.map{|trip|trip.listing}
    end 


    def trips
        trip = Trip.all.select{|trip|trip.guest == self}
        result = trip.map{|trip|trip}
        binding.pry
    end


end 
