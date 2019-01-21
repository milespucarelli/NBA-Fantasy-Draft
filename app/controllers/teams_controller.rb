class TeamsController < ApplicationController
  def new
    @team = Team.new
  end

  def create
    @team = Team.create(team_params)
    if @team.valid?
      redirect_to team_path(@team)
    else
      flash[:errors] = @team.errors.full_messages
      render :new
    end
  end

  def index
    @teams = Team.all
  end

  def show
    find_team
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
    params.require(:team).permit(:name, :hometown)
  end
end
