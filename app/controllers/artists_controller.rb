class ArtistsController < ApplicationController
  before_action :find_artist, only: [:show, :edit, :update]
  def new
    @artist=Artist.new
  end

  def create
    @artist= Artist.create(name: params[:artist][:name], bio: params[:artist][:bio])
    if @artist.save
        redirect_to @artist
    end 
  end

  def update
    @artist.update(name: params[:artist][:name], bio: params[:artist][:bio])
    redirect_to @artist
  end

  def show

  end

  def edit
  end

  private 
  def find_artist
    @artist= Artist.find_by_id(params[:id])
  end 
end
