class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(params[:song])

    if @song.save
      flash.notice = "Song saved"
      redirect_to songs_path
    else
      render :new
    end
  end

  def show
    @song = Song.find(params[:id])
  end

end