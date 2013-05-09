class AlbumsController < ApplicationController
  def index
    @albums = Album.all
    sort_album = params[:album_name]
    sort_band = params[:band_name]

    if sort_album
      @albums.sort_by! { |album| album.name }
    elsif sort_band
      @albums.sort_by! { |album| album.band.name }
    end
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.new(params[:album])

    if @album.save
      flash.notice = "Album saved"
      redirect_to albums_path
    else
      render :new
    end
  end

  def show
    @album = Album.find(params[:id])
  end
end