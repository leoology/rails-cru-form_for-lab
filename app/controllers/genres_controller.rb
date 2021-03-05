class GenresController < ApplicationController
  before_action :find_genre, only: [:show, :edit, :update]
  def new
    @genre=Genre.new
  end

  def create
    @genre=Genre.create(name: params[:genre][:name])
    redirect_to @genre
  end

  def update
    @genre.update(name: params[:genre][:name])
    redirect_to @genre
  end

  def show
  end

  def edit
  end

  private 
  def find_genre
    @genre=Genre.find_by_id(params[:id])
  end
end
