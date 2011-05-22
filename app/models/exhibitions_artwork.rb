class ExhibitionsArtwork < ActiveRecord::Base
  attr_accessible :exhibition_id, :artwork_id
  belongs_to :exhibition
  belongs_to :artwork
end
