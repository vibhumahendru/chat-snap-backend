class PictureController < ApplicationController

  def index
    @pictures = Picture.all
    render json: @pictures, status: :ok
  end

  def create
    @picture = Picture.create(dataUri: params[:dataUri])
    render json: @picture, status: :created
  end



end
