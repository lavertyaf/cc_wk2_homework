class Guest

  attr_reader :name, :age, :fave_song, :money

  def initialize(new_name, new_age, new_favourite_song, new_money_in_wallet)

    @name = new_name
    @age = new_age
    @fave_song = new_favourite_song
    @money = new_money_in_wallet
  end

  def has_money?
      return @money > 0
  end

  def can_afford_entry?(room)
    if @money >= room.fee
        return true
      else
        return false
    end
  end

  def fave_song_on_playlist(room)
    for song in room.playlist
      if song.title == @fave_song
        return "Yay! My favourite song #{fave_song} is on here!"
      else
        return "Oh rats! My favourite song #{fave_song} isn't on this list!"
      end
    end
  end



end
