class PicturesController < ApplicationController

  def index
    @pictures = Picture.all
    render json: @pictures
  end

  def show
    @picture = Picture.find(params[:id])
    render json: @picture
  end

  def create
    @picture = Picture.find_or_initialize_by(picture_params)

    if @picture.save
      render json: @picture, status: :accepted
    else
      render json: {errors: @picture.errors.full_messages}, status: :unprocessable_entity
    end

  end

  def update
    @picture = Picture.find(params[:id])

    if @picture.update(picture_params)
      render json: @picture, status: :accepted
    else
      render json: {errors: @picture.errors.full_messages}, status: :unprocessable_entity
    end

  end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
  end


  private
  def picture_params
    params.require(:picture).permit!
  end

end
