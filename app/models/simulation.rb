class Simulation
  def simulate(user_team)
    cpu_team = Team.new(hometown: 'Matrix', name: 'Sentinals')
    cpu_team.players << Player.where(position: 'Point Guard').sample
    cpu_team.players << Player.where(position: 'Shooting Guard').sample
    cpu_team.players << Player.where(position: 'Point Guard').sample
    cpu_team.players << Player.where(position: 'Point Guard').sample
    cpu_team.players << Player.where(position: 'Point Guard').sample
  end
end
