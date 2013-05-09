class Artist < ActiveRecord::Base
  attr_accessible :name

  has_many :memberships
  has_many :bands, through: :memberships

end