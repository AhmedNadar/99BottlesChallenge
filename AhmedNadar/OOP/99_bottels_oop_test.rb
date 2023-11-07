require "minitest/autorun"
require_relative "beer_wall"

class BottleNumberTest < Minitest::Test
  def setup
    @beer_wall = BeerWall.new(99)
  end

  def test_the_first_verse
    expected = "99 bottles of beer on the wall, 99 bottles of beer.\n" \
               "Take one down and pass it around, 98 bottles of beer on the wall.\n"
    assert_equal expected, @beer_wall.verse(99)
  end

  def test_another_verse
    expected = "89 bottles of beer on the wall, 89 bottles of beer.\n" \
               "Take one down and pass it around, 88 bottles of beer on the wall.\n"
    assert_equal expected, @beer_wall.verse(89)
  end

  def test_verse_2
    expected = "2 bottles of beer on the wall, 2 bottles of beer.\n" \
               "Take one down and pass it around, 1 bottle of beer on the wall.\n"
    assert_equal expected, @beer_wall.verse(2)
  end

  def test_verse_1
    expected = "1 bottle of beer on the wall, 1 bottle of beer.\n" \
               "Take one down and pass it around, no more bottles of beer on the wall.\n"
    assert_equal expected, @beer_wall.verse(1)
  end

  def test_verse_0
    expected = "no more bottles of beer on the wall, no more bottles of beer.\n" \
               "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    assert_equal expected, @beer_wall.verse(0)
  end
end
