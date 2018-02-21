class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :edit, :update, :destroy]

  def index #DONE
    @flats = Flat.all
  end

  def show #DONE
  end

  def new #DONE
    @flat = Flat.new
  end

  def create #DONE
    @flat = Flat.new(flat_params)
    @flat.save
    redirect_to flats_path
  end

  def edit #DONE
    @flat = Flat.find(params[:id])
  end

  def update #DONE
    @flat.update(flat_params)
    redirect_to flats_path
  end

  def destroy #DONE
    @flat.destroy
    redirect_to flats_path
  end

  private

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end
end
