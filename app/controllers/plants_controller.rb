class PlantsController < ApplicationController

  def create
    @garden = Garden.find(params[:garden_id])
    @plant = Plant.new(plant_params)
    # Step de connexion des modèles. link entre plant-garden
    # plant (name: , image: , garden_id: nil)
    @plant.garden = @garden
    # @plant.garden # une plant belongs to a garden
    if @plant.save
      redirect_to garden_path(@garden)
    else
      render "gardens/show", status: :unprocessable_entity
    end
  end

  def destroy
    @plant = Plant.find(params[:id])
    @plant.destroy
    redirect_to garden_path(@plant.garden), status: :see_other
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :image_url)
  end
end
