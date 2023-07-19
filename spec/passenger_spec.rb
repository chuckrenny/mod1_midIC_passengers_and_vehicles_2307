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
end