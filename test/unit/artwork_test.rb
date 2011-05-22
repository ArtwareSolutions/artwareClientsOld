require 'test_helper'

class ArtworkTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Artwork.new.valid?
  end
end
