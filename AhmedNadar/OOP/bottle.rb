# This file contains the Bottle class which represents a bottle in the song.
class Bottle
  attr_reader :quantity

  def initialize(quantity)
    @quantity = quantity
  end

  # Define a method to represent the bottle count in a verse.
  def to_s
    case quantity
    when 0
      "no more bottles"
    when 1
      "1 bottle"
    else
      "#{quantity} bottles"
    end
  end

  # Method to print the action part of the verse.
  def action
    if quantity.positive?
      "Take one down and pass it around"
    else
      "Go to the store and buy some more"
    end
  end

  # Method to get the next bottle object.
  def next
    Bottle.new(quantity.positive? ? quantity - 1 : 99)
  end
end
