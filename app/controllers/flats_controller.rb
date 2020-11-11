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
  end

  def edit
  end

  # Delete
  def destroy
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :number_of_guests, :price_per_night)
  end
end
