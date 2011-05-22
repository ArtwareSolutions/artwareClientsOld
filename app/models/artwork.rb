class Artwork < ActiveRecord::Base
  attr_accessible :artist, :title, :year, :description, :medium, :dimensions, :exhibition_ids
  has_many :exhibitions_artworks
  has_many :exhibitions, :through => :exhibitions_artworks
  validates_presence_of :artist, :title
end
