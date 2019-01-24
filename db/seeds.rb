# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Player.destroy_all

Player.create(name: 'Michael Jordan', position: 'Shooting Guard', ppg: 30.1, fga: 22.9, fgp: 49.7, reb: 6.2, ast: 5.3, stl: 2.3, blk: 0.8, tov: 2.7)
Player.create(name: 'Kevin Durant', position: 'Small Forward', ppg: 27.2, fga: 18.8, fgp: 49.1, reb: 7.1, ast: 4.0, stl: 1.1, blk: 1.1, tov: 3.2)
Player.create(name: 'LeBron James', position: 'Small Forward', ppg: 27.2, fga: 19.6, fgp: 50.4, reb: 7.4, ast: 7.2, stl: 1.6, blk: 0.8, tov: 3.5)
Player.create(name: 'Allen Iverson', position: 'Point Guard', ppg: 26.7, fga: 21.8, fgp: 42.5, reb: 3.7, ast: 6.2, stl: 2.2, blk: 0.2, tov: 3.6)
Player.create(name: 'Karl Malone', position: 'Power Forward', ppg: 25.0, fga: 17.8, fgp: 51.6, reb: 10.1, ast: 3.6, stl: 1.4, blk: 0.8, tov: 3.1)
Player.create(name: 'Kobe Bryant', position: 'Shooting Guard', ppg: 25.0, fga: 19.5, fgp: 44.7, reb: 5.2, ast: 4.7, stl: 1.4, blk: 0.5, tov: 3.0)
Player.create(name: 'Dominique Wilkins', position: 'Center', ppg: 24.8, fga: 20.1, fgp: 46.1, reb: 6.7, ast: 2.5, stl: 1.3, blk: 0.6, tov: 2.5)
Player.create(name: 'Kareem Abdul-Jabbar', position: 'Center', ppg: 24.6, fga: 18.1, fgp: 55.9, reb: 11.2, ast: 3.6, stl: 0.9, blk: 2.6, tov: 2.7)
Player.create(name: 'Larry Bird', position: 'Small Forward', ppg: 24.3, fga: 19.3, fgp: 49.6, reb: 10.0, ast: 6.3, stl: 1.7, blk: 0.8, tov: 3.1)
Player.create(name: 'Adrian Dantley', position: 'Small Forward', ppg: 24.3, fga: 15.8, fgp: 54.0, reb: 5.7, ast: 3.0, stl: 1.0, blk: 0.2, tov: 2.9)
Player.create(name: "Shaquille O'Neal", position: 'Center', ppg: 23.7, fga: 16.1, fgp: 58.2, reb: 10.9, ast: 2.5, stl: 0.6, blk: 2.3, tov: 2.7)
Player.create(name: 'Carmelo Anthony', position: 'Small Forward', ppg: 24.0, fga: 19.1, fgp: 44.9, reb: 6.5, ast: 3.0, stl: 1.0, blk: 0.5, tov: 2.7)
Player.create(name: 'Russell Westbrook', position: 'Point Guard', ppg: 22.9, fga: 18.5, fgp: 43.4, reb: 6.8, ast: 8.3, stl: 1.8, blk: 0.3, tov: 4.0)
Player.create(name: 'Dwyane Wade', position: 'Shooting Guard', ppg: 22.2, fga: 16.8, fgp: 48.1, reb: 4.7, ast: 5.5, stl: 1.6, blk: 0.8, tov: 3.2)
Player.create(name: 'Stephen Curry', position: 'Point Guard', ppg: 22.4, fga: 17.0, fgp: 47.8, reb: 4.5, ast: 6.7, stl: 1.7, blk: 0.2, tov: 3.1)
Player.create(name: 'Tim Duncan', position: 'Power Forward', ppg: 19.0, fga: 14.6, fgp: 50.6, reb: 10.8, ast: 3.0, stl: 0.7, blk: 2.2, tov: 2.4)
# doc = Nokogiri::HTML(open('https://stats.nba.com/alltime-leaders/?SeasonType=Regular%20Season&PerMode=PerGame.html'))
# table = doc.at('tbody')
# table.search('tr').each do |tr|
#   tr.search('td').each_with_index do |td, index|
#     current = Player.new
#     case index
#     when 1
#       current.name = td.search('a').text
#     when 4
#       current.ppg = td.text
#     when 6
#       current.fga = td.text
#     when 7
#       current.fgp = td.text
#     when 16
#       current.reb = td.text
#     when 17
#       current.ast = td.text
#     when 18
#       current.stl = td.text
#     when 19
#       current.blk = td.text
#     when 20
#       current.tov = td.text
#     end
#     current.save
#   end
# end
