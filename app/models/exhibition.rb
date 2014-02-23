class Exhibition < ActiveRecord::Base
  attr_accessible :title, :site, :city, :opening, :closing, :comment, :artwork_ids
  has_many :exhibitions_artworks
  validates_presence_of :title
  has_many :artworks, :through => :exhibitions_artworks
end
