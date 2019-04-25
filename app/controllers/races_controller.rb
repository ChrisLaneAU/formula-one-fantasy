class RacesController < ApplicationController
  before_action :check_for_login

  def show
    @race = Race.find params[:id]
    @fantasy_teams = Fantasy.all.filter { |f| f.user_id == @current_user.id }
  end

  def broadcast
    message = Message.create :content => 'new message'
    ActionCable.server.broadcast 'race_channel', flag: rander_flag(flag)
    render :plain => 'race flag'
  end

  def edit
    @race = Race.find_by :country => "Australia"
    $driver_positions = Position.last.driver_ids.map { |d| d }.shuffle
    @fantasy_team = Fantasy.all.filter { |f| f.user_id == @current_user.id }.first
  end

  def update
    if $driver_positions.present? then
      Race.find(params[:id]).fantasy_ids.each do |f_id|
        points_per_position = [25, 18, 15, 12, 10, 8, 6, 4, 2, 1]
        fantasy_team = Fantasy.find f_id
        driver_ids = fantasy_team.driver_ids
        constructor_driver_ids = Constructor.find(fantasy_team.constructor_id).driver_ids
        all_driver_ids = driver_ids + constructor_driver_ids

        @position_arr = all_driver_ids.map do |driver_id|
          @pos_arr = $driver_positions.map.with_index do |d_id, i|
            i if d_id == driver_id
          end
          @pos_arr = @pos_arr.filter { |i| i.present? }
        end
        @position_arr = @position_arr.reduce { |acc, val| acc + val }

        @points_arr = @position_arr.map do |position|
          @pts_arr = points_per_position.map.with_index do |pos, i|
            pos if i == position
          end
          @pts_arr = @pts_arr.filter { |i| i.present? }
        end
        @points_arr = @points_arr.reduce { |acc, val| acc + val }
        @points_arr = @points_arr.reduce { |acc, val| acc + val }.to_i

        fantasy_team.points = @points_arr
        fantasy_team.save
      end
    end

    race = Race.find params[:id]
    race.update race_params
    redirect_to edit_race_path(race)
  end

  def index
    @races = Race.all
  end

  private
  def race_params
    params.require(:race).permit(:flag, :fantasy_ids => [])
  end

  def render_flag(flag)
    ApplicationController.renderer.render(partial: 'races/flag', locals: { flag: flag })
  end
end
