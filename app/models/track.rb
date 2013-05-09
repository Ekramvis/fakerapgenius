class Track < ActiveRecord::Base
  attr_accessible :album_id, :song_id, :bonus, :lyrics

  belongs_to :album
  belongs_to :song
end