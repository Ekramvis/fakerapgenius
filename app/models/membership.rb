class Membership < ActiveRecord::Base
  attr_accessible :artist_id, :band_id

  belongs_to :band
  belongs_to :artist
end