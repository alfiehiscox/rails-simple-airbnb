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
  end

  def create
  end

  # update
  def update
  end

  def edit
  end

  # Delete
  def destroy
  end
end
