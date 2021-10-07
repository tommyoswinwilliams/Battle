require "player"
RSpec.describe Player do
  it "returns name" do
    bob = Player.new("Bob")
    expect(bob.name).to eq "Bob"
  end

  it "has HP" do
    bob = Player.new("Bob")
    expect(bob.hp).to eq 100
  end

  it "can reduce points" do
    bob = Player.new("Bob")
    bob.reduce_points_by 10
    expect(bob.hp).to eq 90
  end
end