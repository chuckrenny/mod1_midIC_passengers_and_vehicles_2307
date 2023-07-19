class Vehicle
    attr_reader :year,
                :make,
                :model
    
    attr_accessor :passengers

    def initialize(year, make, model)
        @year = year
        @make = make
        @model = model
        @passengers = []
        @speed_check = false
    end

    def speed
        @speed_check = true
    end

    def speeding?
        @speed_check
    end 

    def add_passenger(passenger)
        @passengers << passenger
    end
end