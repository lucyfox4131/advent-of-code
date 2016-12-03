require 'rspec'
require_relative 'distance_to_bunny'

RSpec.describe Traveler do
  it "knows starting orientation" do
    t = Traveler.new
    expect(t.orientation).to eq("north")
  end

  it "starts at 0 blocks away" do
    t = Traveler.new
    expect(t.blocks_away).to eq(0)
  end

  it "knows how to move right" do
    t = Traveler.new
    t.move(["R5"])
    expect(t.blocks_away).to eq(5)
    expect(t.orientation).to eq("east")
  end

  it "knows orientation if moving left from north" do

  end
end
