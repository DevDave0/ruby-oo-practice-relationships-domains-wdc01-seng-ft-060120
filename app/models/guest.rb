
class Guest
    attr_reader :name 

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end 

    def self.all 
        @@all
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

    def trip_count
        trip = Trip.all.select{|trip|trip.guest == self}
        trip.count
        
    end 

    def self.pro_traveller
        Guest.all.select do |guest|
            guest.trip_count > 1
        end
    end
   ## guest.pro_traveller will return array of guest who have made more than 1 trip 

    def self.find_all_by_name(name)
        Guest.all.select{|guest| guest.name == name} 
    end




end 


# Trip.all.map do |trip| 
        #    if trip.guest.name == self 
        #      result << trip
        #      binding.pry
        #     end
        #   result.count
        # end