class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(params[:artist])

    if @artist.save
      flash.notice = "Artist saved"
      redirect_to artists_path
    else
      render :new
    end
  end

  def show
    @artist = Artist.find(params[:id])
  end

end