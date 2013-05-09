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
      redirect_to tracks_path
    else
      render :new
    end
  end
end