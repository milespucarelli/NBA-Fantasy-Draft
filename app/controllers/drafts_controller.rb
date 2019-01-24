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

  def edit
    @team = Team.find(params[:id])
    @point_guards = Player.where(position: 'Point Guard')
    @selected_pg = @team.players.find { |player| player.position == 'Point Guard' }
    @shooting_guards = Player.where(position: 'Shooting Guard')
    @selected_sg = @team.players.find { |player| player.position == 'Shooting Guard' }
    @small_forwards = Player.where(position: 'Small Forward')
    @selected_sf = @team.players.find { |player| player.position == 'Small Forward' }
    @power_forwards = Player.where(position: 'Power Forward')
    @selected_pf = @team.players.find { |player| player.position == 'Power Forward' }
    @centers = Player.where(position: 'Center')
    @selected_c = @team.players.find { |player| player.position == 'Center' }
    render '/drafts/edit'
  end

  def update
    @team = Team.find(draft_params('team_id')['team_id'])
    pg_id = draft_params(point_guard: :player_id)[:point_guard][:player_id]
    sg_id = draft_params(shooting_guard: :player_id)[:shooting_guard][:player_id]
    sf_id = draft_params(small_forward: :player_id)[:small_forward][:player_id]
    pf_id = draft_params(power_forward: :player_id)[:power_forward][:player_id]
    c_id = draft_params(center: :player_id)[:center][:player_id]
    Draft.where(team_id: @team.id).destroy_all
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
