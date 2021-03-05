class SongsController < ApplicationController
  before_action :find_song, only: [:show, :edit, :update]
  def new
    @song=Song.new
  end

  def create
    @song=Song.create(name: params[:song][:name], artist_id: params[:song][:artist_id], genre_id: params[:song][:genre_id])
    redirect_to @song
  end

  def update
    @song.update(name: params[:song][:name])
    redirect_to @song
  end

  def show
  end

  def edit
  end

  def index
    @song=Song.all
  end 

  private 
  def find_song
    @song=Song.find_by_id(params[:id])
  end 
end
