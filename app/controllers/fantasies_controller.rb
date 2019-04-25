class FantasiesController < ApplicationController
  before_action :check_for_login, :only => [:new, :create, :show]

  def new
    @fantasy_team = Fantasy.new
  end

  def create
    fantasy_team = Fantasy.create fantasy_params
    @current_user.fantasies << fantasy_team
    redirect_to fantasies_path
  end

  def edit
    @fantasy_team = Fantasy.find params[:id]
    @drivers = Driver.all
    @constructors = Constructor.all
  end

  def update
    fantasy_team = Fantasy.find params[:id]
    fantasy_team.update fantasy_params

    team_values = fantasy_team.driver_ids.map { |d_id|
      Driver.find(d_id).value
    }.reduce { |acc, val| acc + val }.round(1) + Constructor.find(
      fantasy_team.constructor_id
    ).value.round(1)

    # if team_values < 100.0 then
      fantasy_team.budget = 100.0 - team_values
      fantasy_team.save
      redirect_to fantasies_path
    # end
  end

  def index
    @fantasy_teams = Fantasy.all
  end

  def show
    id = @current_user.id
    f_ids = User.find_by(:id => id).fantasy_ids
    @fantasy_teams = Fantasy.find (f_ids)
  end

  private
  def fantasy_params
    params.require(:fantasy).permit(:name, :image, :budget, :points, :user_id, :constructor_id, :driver_ids => [])
  end
end
