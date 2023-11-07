# This class is responsible for printing the entire song.
require_relative "bottle"

class BeerWall
  def initialize(bottles)
    @bottles = bottles
  end

  # Prints the entire song.
  def sing
    @bottles.downto(0) { |i| print_verse(Bottle.new(i)) }
  end

  def verse(number)
    bottle = Bottle.new(number)
    "#{bottle} of beer on the wall, #{bottle} of beer.\n" \
    "#{bottle.action}, #{bottle.next} of beer on the wall.\n"
  end

  private

  # Prints a single verse for a given bottle.
  def print_verse(bottle)
    puts "#{bottle} of beer on the wall, #{bottle} of beer."
    puts "#{bottle.action}, #{bottle.next} of beer on the wall.\n\n"
  end
end
