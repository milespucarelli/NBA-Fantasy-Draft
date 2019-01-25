module Simulation
  def simulate(user_team)
    cpu_team = Team.find_by(user_id: 1)
    Draft.where(team_id: cpu_team.id).destroy_all
    cpu_team.players << Player.where(position: 'Point Guard').sample
    cpu_team.players << Player.where(position: 'Shooting Guard').sample
    cpu_team.players << Player.where(position: 'Small Forward').sample
    cpu_team.players << Player.where(position: 'Power Forward').sample
    cpu_team.players << Player.where(position: 'Center').sample

    user_score = user_team.players.inject(0) do |total, player|
      total + player.ppg.to_i
    end

    cpu_score = cpu_team.players.inject(0) do |total, player|
      total + player.ppg.to_i
    end

    { user_score: user_score, cpu_score: cpu_score }
  end
end
