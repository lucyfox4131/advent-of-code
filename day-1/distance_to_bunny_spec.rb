require 'rspec'
require_relative 'distance_to_bunny'

RSpec.describe Traveler do
  it "knows starting orientation" do
    t = Traveler.new
    expect(t.start_orientation).to eq("north")
  end

  it "starts at 0 blocks away" do
    t = Traveler.new
    expect(t.blocks_away).to eq(0)
  end

  it "knows orientation if moving right from north" do

  end

  it "knows orientation if moving left from north" do

  end
end
