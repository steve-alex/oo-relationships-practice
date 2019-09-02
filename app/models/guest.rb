class Guest

    @@all=[]

    attr_accessor :name

    def initialize(name)
        @name = name
        @@all << self
    end
    
    def self.all
        @@all
    end

    def trip_count
        Trips.all.select{|trip| trip.guest == self}.length
    end

    def 
    

end