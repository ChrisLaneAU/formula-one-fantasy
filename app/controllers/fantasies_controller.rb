class FantasiesController < ApplicationController
  before_action :check_for_login, :only => [:new, :create, :show]

  def new
    @fantasy_team = Fantasy.new
  end

  def create
    fantasy_team = Fantasy.create fantasy_params
    @current_user.fantasies << fantasy_team
    redirect_to root_path
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
    params.require(:fantasy).permit(:name, :image, :budget, :points, :user_id, :driver_ids, :constructor_id)
  end
end
