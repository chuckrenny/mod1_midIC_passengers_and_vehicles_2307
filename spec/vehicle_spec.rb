require 'spec_helper'

RSpec.describe Vehicle do
    before(:each) do
        @vehicle = Vehicle.new("2001", "Honda", "Civic")

        @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        @jude = Passenger.new({"name" => "Jude", "age" => 20})
        @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    end

    it 'can initialize and access attributes' do
        expect(@vehicle).to be_a(Vehicle)
        expect(@vehicle.year).to eq("2001")
        expect(@vehicle.make).to eq("Honda")
        expect(@vehicle.model).to eq("Civic")
        expect(@vehicle.passengers).to eq([])
    end

    it 'can check if the vehicle is speeding' do
        expect(@vehicle.speeding?).to eq(false)

        @vehicle.speed
        expect(@vehicle.speeding?).to eq(true)
        expect(@vehicle.passengers).to eq([])
    end

    it 'can add passengers to the vehicle' do
        @vehicle.add_passenger(@charlie)
        @vehicle.add_passenger(@jude)
        @vehicle.add_passenger(@taylor)

        expect(@vehicle.passengers).to eq([@charlie, @jude, @taylor])
    end

    it 'can count the number of adults in the vehicle' do
        @vehicle.add_passenger(@charlie)
        @vehicle.add_passenger(@jude)
        @vehicle.add_passenger(@taylor)
        
        expect(@vehicle.num_adults).to eq(2)
    end
end