class AdvertisementsController < ApplicationController
  before_action :set_advertisement, only: [:show, :edit, :update]
  before_action :authenticate_user!, except: [:show]

  def index
    @advertisements = current_user.advertisements
  end

  def show
  end

  def new
    @advertisement = current_user.advertisements.build
  end

  def create
    @advertisement = current_user.advertisements.build(advertisement_params)

    if @advertisement.save
      redirect_to @advertisement, notice: "Saved!!!"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @advertisement.save
      redirect_to @advertisement, notice: "Updated!!!"
    else
      render :edit
    end
  end

  private

  def set_advertisement
    @advertisement = Advertisement.find(params[:id])
  end

  def advertisement_params
    params.require(:advertisement).permit(:type, :title, :price, :details, :region, :city, :address, :phone, :active )
  end
end
