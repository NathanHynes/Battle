require 'player'

describe Player do

  let(:player_1) { Player.new(name) }
  let(:name) { double :player_1 }

   describe "#name" do
     it "returns players name" do
       expect(player_1.name).to eq name
     end
  end
end
