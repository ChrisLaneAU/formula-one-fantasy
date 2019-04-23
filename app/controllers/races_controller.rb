class RacesController < ApplicationController
  def show
    @race = Race.find_by :country => "Australia"
  end

  def broadcast
    message = Message.create :content => 'new message'
    ActionCable.server.broadcast 'race_channel', flag: rander_flag(flag)
    render :plain => 'race flag'
  end

  def edit
    @race = Race.find_by :country => "Australia"
    @driver_positions = Position.last.driver_ids.map { |d| d }.shuffle
  end

  def update
    race = Race.find params[:id]
    race.update race_params
    # redirect_back(fallback_location: edit_race_path)
  end

  def index
  end

  private
  def race_params
    params.require(:race).permit(:flag)
  end

  def render_flag(flag)
    ApplicationController.renderer.render(partial: 'races/flag', locals: { flag: flag })
  end
end
