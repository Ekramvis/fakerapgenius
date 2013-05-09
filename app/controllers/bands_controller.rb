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
      redirect_to bands_url
    else
      render :new
    end
  end

  def show
    @band = Band.find(params[:id])
  end

  def search
    target = params[:query]
    target = "%" + "#{target}" + "%"
    @bands = Band.where("name LIKE ?", target)
  end
end