class Room
  attr_accessor :playlist, :guestlist
  attr_reader :room, :max, :fee

  def initialize(new_room_number, new_max_occupancy, new_entry_fee)

    @room = new_room_number
    @max = new_max_occupancy
    @playlist = []
    @fee = new_entry_fee
    @limit = 30
    @guestlist = []
  end

  def playlist_length
    @playlist.length
  end

  def add_song(song)
    @playlist.push(song)
  end

  def add_customer(customer)
    @guestlist.push(customer)
  end

  def remove_customer(customer)
    @guestlist.delete(customer)
  end

  def has_exceeded_time_limit
    # add the time of each song in the array
    # if time is greater than time limit return true
    
  end

end
