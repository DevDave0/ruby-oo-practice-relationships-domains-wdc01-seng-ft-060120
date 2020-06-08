
class Listing 
    attr_reader :name, :city_name
    attr_accessor :trip
    @@all = []

    def initialize(name, city_name)
        @name = name 
        @city_name = city_name
        @@all << self
    end 

    def guests 
        trip = Trip.all.select{|trip|trip.listing == self}
        trip.map{|trip|trip.guest}
    end 

    def trips
        Trip.all.select do |trip|
            if trip.listing == self
                result = trip
            end 
            result
        end 
    end 

    def trip_count
        self.trips.count
    end 

    def self.all
        @@all
    end 

    def self.find_all_by_city(city)
        Listing.all.select{|listing|listing.city_name == city}
    end 

    def self.most_popular
        Listing.all.each do |listing|
            result = 0
            if listing.trip_count > result
                result = listing.trip_count
                listing
            end 
        end
    end
    

end 