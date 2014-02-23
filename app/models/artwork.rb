class Artwork < ActiveRecord::Base
  require 'carrierwave'
  attr_accessible :artist, :title, :image, :year, :description, :medium, :dimensions, :exhibition_ids
  has_many :exhibitions_artworks
  has_many :exhibitions, :through => :exhibitions_artworks
  validates_presence_of :artist, :title
  mount_uploader :image, ImageUploader
end
