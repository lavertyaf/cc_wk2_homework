require ("minitest/autorun")
require_relative("../song")

class SongTest < MiniTest::Test

  def setup

    @song1 = Song.new("Woodpile", "Frightened Rabbit", 4)
    @song2 = Song.new("Fall into the party", "Twin Atlantic", 5)
    @song3 = Song.new("The Captain", "Biffy Clyro", 4)
    @song4 = Song.new("Bat outta hell", "Meatloaf", 7)
    @song5 = Song.new("You make my dreams", "Hall & Oates", 4)
  end

  def test_song_has_title
    assert_equal("Woodpile", @song1.title)
  end

  def test_song_has_artist
    assert_equal("Twin Atlantic", @song2.artist)
  end

  def test_song_has_run_time
    assert_equal(7, @song4.run_time)
  end

end
