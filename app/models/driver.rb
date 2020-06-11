class Driver
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
        Ride.all.select{|ride|ride.driver == self}
    end

    def passengers
        self.rides.map{|ride|ride.passenger}
    end
    
    def total_distance
        total_distance = self.rides.map{|ride|ride.distance}
        total_distance.sum
    end 

    def self.mileage_cap(distance)
        result = []
        Driver.all.each do |driver|
            if driver.total_distance > distance 
                result << driver
            end 
        end 
        result
    end 
    
end