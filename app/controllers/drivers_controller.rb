class DriversController < ApplicationController
  def new
  end

  def update
    driver = Fantasy.find params[:id]
    driver.update driver_params
    redirect_to fantasy_path(driver.id)
  end

  private
  def driver_params
    params.require(:driver).permit(:fantasy_ids => [])
  end
end
