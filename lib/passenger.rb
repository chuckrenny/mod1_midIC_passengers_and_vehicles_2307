class Passenger
    attr_reader :name,
                :age,
                :driver

    def initialize(data)
        @name = data["name"]
        @age = data["age"]
        @driver = false
    end

    def adult?
        @age >= 18
    end

    def drive
        @driver = true if adult?
    end

    def driver?
        @driver 
    end
end