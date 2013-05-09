class Track < ActiveRecord::Base
  attr_accessible :album_id, :song_id, :bonus, :lyrics

  validates :album_id, :song_id, presence: true

  belongs_to :album
  belongs_to :song
  has_one :band, :through => :album
end