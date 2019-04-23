class PositionsController < ApplicationController
  def update
    position = Position.find params[:id]
    position.update position_params
  end

  private
  def position_params
    params.require(:position).permit(:driver_ids)
  end
end
