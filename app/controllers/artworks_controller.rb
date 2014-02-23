class ArtworksController < ApplicationController
  def index
    @artworks = Artwork.all
  end

  def show
    @artwork = Artwork.find(params[:id])
  end

  def new
    @artwork = Artwork.new
  end

  def create
    @artwork = Artwork.new(params[:artwork])
    if @artwork.save
      redirect_to @artwork, :notice => "Successfully created artwork."
    else
      render :action => 'new'
    end
  end

  def edit
    @artwork = Artwork.find(params[:id])
  end

  def update
    @artwork = Artwork.find(params[:id])
    if @artwork.update_attributes(params[:artwork])
      redirect_to @artwork, :notice  => "Successfully updated artwork."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @artwork = Artwork.find(params[:id])
    @artwork.destroy
    redirect_to artworks_url, :notice => "Successfully destroyed artwork."
  end
end
