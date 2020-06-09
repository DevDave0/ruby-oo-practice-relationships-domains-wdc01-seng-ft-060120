
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
    end

    def trip_count
        trips.count
    end 

    def self.pro_traveller
        Guest.all.select do |guest|
            guest.trip_count > 1
        end
    end

    def self.find_all_by_name(name)
        Guest.all.select{|guest| guest.name == name} 
    end
end 
