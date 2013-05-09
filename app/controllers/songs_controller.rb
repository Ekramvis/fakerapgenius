class SongsController < ApplicationController
  def new
    @song = Song.new
  end

  def create
    @song = Song.new(params[:song])

    if @song.save
      flash.notice = "Song saved"
      redirect_to new_track_url
    else
      render :new
    end
  end

  def show
    @song = Song.find(params[:id])
  end
end