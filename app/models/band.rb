class Band < ActiveRecord::Base
  attr_accessible :name, :artist_ids

  validates :name, presence: true

  has_many :albums
  has_many :tracks, through: :albums
  has_many :songs, through: :tracks
  has_many :memberships
  has_many :artists, :through => :memberships
end