require("minitest/autorun")
require_relative("../room")
require_relative("../guest")
require_relative("../song")

class RoomTest < MiniTest::Test

  def setup

    @song1 = Song.new("Woodpile", "Frightened Rabbit", 4)
    @song2 = Song.new("Fall into the party", "Twin Atlantic", 5)
    @song3 = Song.new("The Captain", "Biffy Clyro", 4)
    @song4 = Song.new("Bat outta hell", "Meatloaf", 7)
    @song5 = Song.new("You make my dreams", "Hall & Oates", 4)

    @customer1 = Guest.new("Laura", 31, "Hero", 20)
    @customer2 = Guest.new("Claire", 33, "You make my dreams", 25)
    @customer3 = Guest.new("Andrea", 30, "Killin in the name", 20)
    @customer4 = Guest.new("Andy", 32, "Woodpile", 27)
    @customer5 = Guest.new("Nicol", 34, "Back for good", 10)
    @customer6 = Guest.new("Roz", 27, "Let's get ready to rumble!", 15)

    playlist = []

    @room1 = Room.new(1, 4, 15)
    @room2 = Room.new(2, 2, 20)
    @room3 = Room.new(3, 6, 10)
  end

  def test_room_has_number
    assert_equal(1, @room1.room)
  end

  def test_room_has_max_occupancy
    assert_equal(2, @room2.max)
  end

  def test_customer_can_be_added
    @room1.add_customer(@customer4)
    assert_equal(1, @room1.guestlist.length)
  end

  def test_customer_can_be_removed
    @room2.add_customer(@customer2)
    @room2.remove_customer(@customer2)
    assert_equal(0, @room2.guestlist.length)
  end

  def test_playlist_starts_empty
    assert_equal(0, @room1.playlist_length)
  end

  def test_songs_can_be_added_playlist
    @room1.add_song(@song5)
    assert_equal(1, @room1.playlist_length)
  end

  def test_max_occupancy_refused
    @room2.add_customer(@customer1)
    @room2.add_customer(@customer1)
    @room2.add_customer(@customer1)
    assert_equal(2, @room2.max)
  end

  def test_playlist_has_exceeded_time_limit__true
  @room1.add_song(@song1)
  @room1.add_song(@song2)
  @room1.add_song(@song3)
  @room1.add_song(@song4)
  @room1.add_song(@song1)
  @room1.add_song(@song4)
  @room1.add_song(@song5)
  assert_equal(true, @room1.has_exceeded_time_limit?)
  end

  def playlist_has_exceeded_time_limit__false
    @room1.add_song(@song1)
    @room1.add_song(@song4)
    @room1.add_song(@song5)
    assert_equal(false, @room1.has_exceeded_time_limit?)
  end

end
