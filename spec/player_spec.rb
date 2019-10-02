require 'player'

describe Player do

  let(:player_1) { Player.new(name1) }
  let(:name1) { double :player_1 }
  let(:name2) { double :player_2 }
  let(:player_2) { Player.new(name2) }

   describe "#name" do
     it "returns players name" do
       expect(player_1.name).to eq name1
     end
  end

  describe '#hit points' do
    it "displays health" do
      expect(player_1.hp).to eq Player::DEFAULT_HP
    end
  end
  describe '# receive damage' do
    it "reduces HP by 10" do
      expect { player_1.receive_damage }.to change { player_1.hp }.by(-10)
    end
  end
end
