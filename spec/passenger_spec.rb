require 'spec_helper'

RSpec.describe Passenger do
    before(:each) do
        @charlie = Passenger.new({"name" => "Charlie", "age" => 18})
        @taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    end

    it 'can initialize and access attributes' do
        expect(@charlie).to be_a(Passenger)
        expect(@charlie.name).to eq("Charlie")
        expect(@charlie.age).to eq(18)
    end

    it 'can tell if Passenger is an adult' do
        expect(@charlie.adult?).to eq(true)
        expect(@taylor.adult?).to eq(false)
    end

    it 'can say who is the driver and be able to switch to a passenger that is an adult' do
        expect(@charlie.driver?).to eq(false)

        @charlie.drive
        expect(@charlie.driver?).to eq(true)
    end
end