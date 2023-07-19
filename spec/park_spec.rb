require 'spec_helper'

RSpec.describe Park do
    before(:each) do
        @park = Park.new("Veterans Park", 10)
        @vehicle = Vehicle.new("2001", "Honda", "Civic")

        @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        @jude = Passenger.new({"name" => "Jude", "age" => 20})
        @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    end

    it 'can initialize and access attributes' do
        expect(@park).to be_a(Park)
        expect(@park.name).to eq("Veterans Park")
        expect(@park.admission).to eq(10)
    end

end