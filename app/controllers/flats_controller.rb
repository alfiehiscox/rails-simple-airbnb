class FlatsController < ApplicationController
  # read
  def index
    @flats = Flat.all
  end

  def show
    @flat = Flat.find(params[:id])
  end

  # create
  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to flat_path(@flat.id)
    else
      render :new
    end
  end

  # update
  def update
    @flat = Flat.find(params[:id])
    if @flat.update(flat_params)
      redirect_to flat_path(@flat.id)
    else
      render :edit
    end
  end

  def edit
    @flat = Flat.find(params[:id])
  end

  # Delete
  def destroy
    flat = Flat.find(params[:id])
    flat.destroy
    redirect_to flats_path
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :number_of_guests, :price_per_night)
  end
end
