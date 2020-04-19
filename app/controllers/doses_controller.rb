class DosesController < ApplicationController
  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)

    if @dose.save
      redirect_to cocktail_id_path, notice: 'Your ingredients was successfully created.'
    else
      render :new
    end
  end

  def delete
    @dose.destroy
    redirect_to cocktail_dose_path, notice: 'Your ingredient was successfully removed.'
  end
end
