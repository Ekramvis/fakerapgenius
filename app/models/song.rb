class Song < ActiveRecord::Base
  attr_accessible :name

  has_many :tracks
end