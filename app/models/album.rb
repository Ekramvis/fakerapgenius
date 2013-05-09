class Album < ActiveRecord::Base
  attr_accessible :name, :band_id, :live

  validates :name, :band_id, presence: true

  belongs_to :band
  has_many :tracks
  has_many :songs, through: :tracks
end