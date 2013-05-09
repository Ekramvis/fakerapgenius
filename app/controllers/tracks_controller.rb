class TracksController < ApplicationController
  def show
    @track = Track.find(params[:id])
  end

  def new
    @track = Track.new
  end

  def create
    @track = Track.new(params[:track])

    if @track.save
      flash.notice = "Track saved"
      redirect_to album_url(@track.album)
    else
      render :new
    end
  end

  def index
    @tracks = Track.all
  end

end