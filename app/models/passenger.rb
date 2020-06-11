class Passenger
    attr_reader :name
    
@@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def rides
        Ride.all.select{|ride|ride.passenger == self}
    end

    def drivers
        self.rides.map{|ride|ride.driver}
    end

    def total_distance
        total_distance = self.rides.map{|ride|ride.distance}
        total_distance.sum
    end

    def self.premium_members
        result = []
        Passenger.all.each do |passenger|
            if passenger.total_distance > 100.0
                result << passenger
            end
        end 
        result
    end


end
