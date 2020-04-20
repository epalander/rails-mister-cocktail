class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    # have to find which cocktail it is associated with
    @cocktail = Cocktail.find(params[:cocktail_id])
    # doses_params will retrieve the form inputs from the user
    @dose = Dose.new(doses_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail), notice: 'Your change successfully created.'
    else
      render :new
    end
  end

  def delete
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_dose_path(@dose.cocktail), notice: 'Your change successfully removed.'
  end

  def doses_params
    # we need the cocktail id, the ingredient id, and description, but the cocktail_id will be taken from the method.
    params.require(:dose).permit(:ingredient_id, :description)
  end
end
