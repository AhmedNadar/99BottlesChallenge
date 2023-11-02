class Bottles
  def print_bottle(number)
    case number
    when 0
      "no more bottles"
    when 1
      "1 bottle"
    else
      "#{number} bottles"
    end
  end

  def print_verse(number)
    if number.positive?
      puts "#{print_bottle(number)} of beer on the wall, #{print_bottle(number)} of beer."
      puts "Take one down and pass it around, #{print_bottle(number - 1)} of beer on the wall.\n\n"
    else
      puts "No more bottles of beer on the wall, no more bottles of beer."
      puts "Go to the store and buy some more, 99 bottles of beer on the wall.\n\n"
    end
  end

  def print_song
    99.downto(0) do |i|
      print_verse(i)
    end
  end
end

Bottles.new.print_song
