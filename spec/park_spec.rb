require 'spec_helper'

RSpec.describe Park do
    before(:each) do
        @park = Park.new("Veterans Park", 10)
        @vehicle1 = Vehicle.new("2001", "Honda", "Civic")
        @vehicle2 = Vehicle.new("2022", "Tesla", "Model Y")

        @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        @jude = Passenger.new({"name" => "Jude", "age" => 20})
        @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
        @daniel = Passenger.new({"name" => "Daniel", "age" => 22})
    end

    it 'can initialize and access attributes' do
        expect(@park).to be_a(Park)
        expect(@park.name).to eq("Veterans Park")
        expect(@park.admission_price).to eq(10)
        expect(@park.vehicles).to eq([])
    end

    it 'can add vehicles to the park' do
        @vehicle1.add_passenger(@charlie)
        @vehicle1.add_passenger(@jude)
        @vehicle2.add_passenger(@taylor)
        @vehicle2.add_passenger(@daniel)

        @park.add_vehicle(@vehicle1)
        @park.add_vehicle(@vehicle2)
        expect(@park.vehicles).to eq([@vehicle1, @vehicle2])
    end

    it 'can list all passengers in vehicles that entered the park' do
        @vehicle1.add_passenger(@charlie)
        @vehicle1.add_passenger(@jude)
        @vehicle2.add_passenger(@taylor)
        @vehicle2.add_passenger(@daniel)

        @park.add_vehicle(@vehicle1)
        @park.add_vehicle(@vehicle2)

        expect(@park.list_all_passengers).to eq([@charlie, @jude, @taylor, @daniel])
    end
end