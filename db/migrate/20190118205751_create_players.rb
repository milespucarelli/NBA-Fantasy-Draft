class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.string :position
      t.decimal :ppg
      t.decimal :fga
      t.decimal :fgp
      t.decimal :reb
      t.decimal :ast
      t.decimal :stl
      t.decimal :blk
      t.decimal :tov

      t.timestamps
    end
  end
end
