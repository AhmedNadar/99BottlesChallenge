# 99 Bottles of beer - no OOP

This is [my solution](/AhmedNadar/99_bottels_no_oop.rb), i have tried to solve the problem without using any OOP principles. I have also tried to keep it as readable as possible, so that it is easy to understand what is going on.

```ruby
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
```

You would notice that it rely on conditions to print the correct string. I have used the `case` statement to print the correct string for the number of bottles. I have also used the `if` statement to print the correct string for the last verse. That's not good OOP, but it is a good solution for this problem, for now.

## Result

Run the following:
```shell
ruby AhmedNadar/99_bottels_no_oop.rb`
```
✅ And the output matches the [expected result](/result.md).
