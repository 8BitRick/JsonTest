class CreatePlayerActions < ActiveRecord::Migration
  def change
    create_table :player_actions do |t|
      t.string :name
      t.string :position

      t.timestamps
    end
  end
end
