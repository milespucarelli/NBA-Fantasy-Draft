class TeamsController < ApplicationController
  def new
    current_user
    @team = Team.new(user_id: @current_user.id)
  end

  def create
    current_user
    @team = Team.create(team_params)
    if @team.valid?
      redirect_to new_draft_path(@team)
    else
      flash[:errors] = @team.errors.full_messages
      render :new
    end
  end

  def index
    current_user
    @teams = @current_user.teams
  end

  def show
    find_team
    current_user
  end

  def edit
    find_team
  end

  def update
    find_team
    @team.update(team_params)
    if @team.valid?
      redirect_to team_path(@team)
    else
      flash[:errors] = @team.errors.full_messages
      render :edit
    end
  end

  def delete
    find_team
    @team.destroy
    redirect_to teams_path
  end

  private

  def find_team
    @team = Team.find(params[:id])
  end

  def team_params
    params.require(:team).permit(:name, :hometown, :user_id)
  end
end
