class CreateDrafts < ActiveRecord::Migration[5.2]
  def change
    create_table :drafts do |t|
      t.integer :player_id
      t.integer :team_id

      t.timestamps
    end
  end
end
