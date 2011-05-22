class ExhibitionsController < ApplicationController
  def index
    @exhibitions = Exhibition.all
  end

  def show
    @exhibition = Exhibition.find(params[:id])
  end

  def new
    @exhibition = Exhibition.new
  end

  def create
    @exhibition = Exhibition.new(params[:exhibition])
    if @exhibition.save
      redirect_to @exhibition, :notice => "Successfully created exhibition."
    else
      render :action => 'new'
    end
  end

  def edit
    @exhibition = Exhibition.find(params[:id])
  end

  def update
    @exhibition = Exhibition.find(params[:id])
    if @exhibition.update_attributes(params[:exhibition])
      redirect_to @exhibition, :notice  => "Successfully updated exhibition."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @exhibition = Exhibition.find(params[:id])
    @exhibition.destroy
    redirect_to exhibitions_url, :notice => "Successfully destroyed exhibition."
  end
end
