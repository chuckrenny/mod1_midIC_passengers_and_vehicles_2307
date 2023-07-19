class Passenger
    attr_reader :name,
                :age

    def initialize(data)
        @name = data["name"]
        @age = data["age"]
    end

    def adult?
        @age >= 18
    end
end