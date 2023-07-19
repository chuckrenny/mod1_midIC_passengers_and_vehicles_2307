class Park
    attr_reader :name,
                :admission_price,
                :vehicles

    attr_accessor :revenue

    def initialize(name, admission_price)
        @name = name
        @admission_price = admission_price
        @vehicles = []
        @revenue = 0
    end

    def add_vehicle(vehicle)
        @vehicles << vehicle
    end

    def list_all_passengers
        @vehicles.map do |vehicle|
            vehicle.passengers
        end.flatten
    end

    def revenue_generated
        num_of_adults = list_all_passengers.count do |passenger|
            passenger.adult?
        end * admission_price
    end

    def all_attendees
        list_all_passengers.map do |passenger|
            passenger.name
        end
    end
end