require 'test_helper'

class ExhibitionsArtworkTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert ExhibitionsArtwork.new.valid?
  end
end
