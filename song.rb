class Song

  attr_reader :title, :artist, :run_time

  def initialize(new_title, new_artist, new_run_time)
    @title = new_title
    @artist = new_artist
    @run_time = new_run_time

  end

end
