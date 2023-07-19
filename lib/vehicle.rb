class Vehicle
    attr_reader :year,
                :make,
                :model,
    
    attr_accessor :passengers

    def initialize(year, make, model)
        @year = year
        @make = make
        @model = model
        @passengers = []
    end
    
end