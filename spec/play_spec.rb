require "play"
RSpec.describe Play do
  let(:bob) { double :player, name: "Bob", hp: 100 }
  let(:alice) { double :player, name: "Alice", hp: 100 }
  # it "creates a new instance" do
  #   expect(subject).to be_instance_of Play
  # end

  it "requires 2 players to initialize" do
    play = Play.new(bob, alice)
    expect(play.cur_player.name).to eq "Bob"
  end

  describe "#attack" do
    it "reduces player 2 points after first attack" do
      play = Play.new(bob, alice)
      # play.attack
      allow(alice).to receive(:reduce_points_by).with(10)
      expect(play.attack).to eq "Alice's HP are now reduced."
    end
  end
end