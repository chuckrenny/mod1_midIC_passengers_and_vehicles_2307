class Park
    attr_reader :name,
                :admission_price,
                :vehicles

    attr_accessor :revenue

    def initialize(name, admission_price)
        @name = name
        @admission_price = admission_price
        @vehicles = []
    end

    def add_vehicle(vehicle)
        @vehicles << vehicle
    end

    def passengers
        @vehicles.map do |vehicle|
            vehicle.passengers
        end.flatten
    end

    def revenue
        passengers.count do |passenger|
            passenger.adult?
        end * admission_price
    end

    def all_attendees
        passengers.map do |passenger|
            passenger.name
        end.sort
    end

    def minors
        passengers.find_all do |passenger|
            !passenger.adult?
        end.map(&:name).sort
    end

    def adults
        passengers.find_all do |passenger|
            passenger.adult?
        end.map(&:name).sort
    end
end