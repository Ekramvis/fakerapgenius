class Artist < ActiveRecord::Base
  attr_accessible :name, :band_ids

  has_many :memberships
  has_many :bands, through: :memberships

end