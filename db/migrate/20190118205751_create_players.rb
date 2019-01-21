class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.string :nba_team
      t.integer :jersey_number

      t.timestamps
    end
  end
end
