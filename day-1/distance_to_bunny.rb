require 'pry'

class Traveler
  attr_reader :orientation, :blocks, :move_right, :move_left

  def initialize
    @orientation  = "north"
    @blocks       = {"north": 0, "south": 0, "east": 0, "west": 0}
    @move_right   = {"north" => "east", "east" => "south", "south" => "west", "west" => "north"}
    @move_left    = {"north" => "west", "west" => "south", "south" => "east", "east" => "north"}
  end

  def blocks_away
    blocks[:north] + blocks[:south] + blocks[:west] + blocks[:east]
  end

  def move(directions)
    directions.each do |direction|
      if direction.include?("R")
        new_orientation = move_right[orientation]
        orientation = new_orientation
        blocks[new_orientation] = direction.sub("R", "").to_i
      else
        new_orientation = move_right[orientation]
      end
    end
  end
end




    # @path = ["L5", "R1", "R3", "L4", "R3", "R1", "L3", "L2", "R3", "L5", "L1", "L2", "R5", "L1", "R5", "R1", "L4", "R1", "R3", "L4", "L1", "R2", "R5", "R3", "R1", "R1", "L1", "R1", "L1", "L2", "L1", "R2", "L5", "L188", "L4", "R1", "R4", "L3", "R47", "R1", "L1", "R77", "R5", "L2", "R1", "L2", "R4", "L5", "L1", "R3", "R187", "L4", "L3", "L3", "R2", "L3", "L5", "L4", "L4", "R1", "R5", "L4", "L3", "L3", "L3", "L2", "L5", "R1", "L2", "R5", "L3", "L4", "R4", "L5", "R3", "R4", "L2", "L1", "L4", "R1", "L3", "R1", "R3", "L2", "R1", "R4", "R5", "L3", "R5", "R3", "L3", "R4", "L2", "L5", "L1", "L1", "R3", "R1", "L4", "R3", "R3", "L2", "R5", "R4", "R1", "R3", "L4", "R3", "R3", "L2", "L4", "L5", "R1", "L4", "L5", "R4", "L2", "L1", "L3", "L3", "L5", "R3", "L4", "L3", "R5", "R4", "R2", "L4", "R2", "R3", "L3", "R4", "L1", "L3", "R2", "R1", "R5", "L4", "L5", "L5", "R4", "L5", "L2", "L4", "R4", "R4", "R1", "L3", "L2", "L4", "R3"]
