require "player"
RSpec.describe Player do
  it "returns name" do
    bob = Player.new("Bob")
    expect(bob.name).to eq "Bob"
  end
end