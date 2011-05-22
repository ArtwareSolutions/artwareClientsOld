require 'test_helper'

class ArtworksControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Artwork.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Artwork.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Artwork.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to artwork_url(assigns(:artwork))
  end

  def test_edit
    get :edit, :id => Artwork.first
    assert_template 'edit'
  end

  def test_update_invalid
    Artwork.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Artwork.first
    assert_template 'edit'
  end

  def test_update_valid
    Artwork.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Artwork.first
    assert_redirected_to artwork_url(assigns(:artwork))
  end

  def test_destroy
    artwork = Artwork.first
    delete :destroy, :id => artwork
    assert_redirected_to artworks_url
    assert !Artwork.exists?(artwork.id)
  end
end
