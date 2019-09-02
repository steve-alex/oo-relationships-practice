class Listing

    @all=[]

    attr_accessor :city

    def initialize(city)
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def trips
        Trips.all.select{|trip| trip.listing == self}
    end

    def trip_count
        trips.length
    end

    def self.find_all_by_city(city)
        Trips.all.select{|trip| trip.city == city}
    end

    def self.most_popular
        
    end

end
