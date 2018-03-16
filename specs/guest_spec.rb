require("minitest/autorun")
require_relative("../guest")
require_relative("../song")
require_relative("../room")

class GuestTest < MiniTest::Test

  def setup

    @song1 = Song.new("Woodpile", "Frightened Rabbit", 4)
    @song2 = Song.new("Fall into the party", "Twin Atlantic", 5)
    @song3 = Song.new("The Captain", "Biffy Clyro", 4)
    @song4 = Song.new("Bat outta hell", "Meatloaf", 7)
    @song5 = Song.new("You make my dreams", "Hall & Oates", 4)


    @room1 = Room.new(3, 6, 17)

    @customer1 = Guest.new("Laura", 31, "Hero", 20)
    @customer2 = Guest.new("Claire", 33, "You make my dreams", 25)
    @customer3 = Guest.new("Andrea", 30, "Killin in the name", 20)
    @customer4 = Guest.new("Andy", 32, "Woodpile", 27)
    @customer5 = Guest.new("Nicol", 34, "Back for good", 10)
    @customer6 = Guest.new("Roz", 27, "Let's get ready to rumble!", 15)
  end

  def test_customer_has_name
    assert_equal("Laura", @customer1.name)
  end

  def test_customer_has_age
    assert_equal(30, @customer3.age)
  end

  def test_customer_has_fave_song
    assert_equal("Woodpile", @customer4.fave_song)
  end

  def test_customer_has_money
    assert_equal(true, @customer6.has_money?)
  end

  def test_customer_can_afford_entry__true
    assert_equal(true, @customer2.can_afford_entry?(@room1))
  end

  def test_customer_can_afford_entry__false
    assert_equal(false, @customer6.can_afford_entry?(@room1))
  end


end
