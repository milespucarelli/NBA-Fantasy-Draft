class DraftsController < ApplicationController
  def new
    @team = Team.find(params[:id])
    @point_guards = Player.where(position: 'Point Guard')
    @shooting_guards = Player.where(position: 'Shooting Guard')
    @small_forwards = Player.where(position: 'Small Forward')
    @power_forwards = Player.where(position: 'Power Forward')
    @centers = Player.where(position: 'Center')
    render '/drafts/new'
  end

  def create
    @team = Team.find(draft_params('team_id')['team_id'])
    pg_id = draft_params(point_guard: :player_id)[:point_guard][:player_id]
    sg_id = draft_params(shooting_guard: :player_id)[:shooting_guard][:player_id]
    sf_id = draft_params(small_forward: :player_id)[:small_forward][:player_id]
    pf_id = draft_params(power_forward: :player_id)[:power_forward][:player_id]
    c_id = draft_params(center: :player_id)[:center][:player_id]
    @team.players << Player.find(pg_id)
    @team.players << Player.find(sg_id)
    @team.players << Player.find(sf_id)
    @team.players << Player.find(pf_id)
    @team.players << Player.find(c_id)
    redirect_to team_path(@team)
  end

  private

  def draft_params(*args)
    params.require(:draft).permit(*args)
  end
end
