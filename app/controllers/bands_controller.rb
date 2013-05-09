class BandsController < ApplicationController
  def index
    @bands = Band.all
  end

  def new
    @band = Band.new
  end

  def create
    @band = Band.new(params[:band])

    if @band.save
      flash.notice = "Band saved"
      redirect_to bands_path
    else
      render :new
    end
  end

  def show
    @band = Band.find(params[:id])
  end
end