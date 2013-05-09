class Album < ActiveRecord::Base
  attr_accessible :name, :band_id, :live

  belongs_to :band
  has_many :tracks
  has_many :songs, through: :tracks
end