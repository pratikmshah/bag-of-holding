class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :console, null: false
      t.string :game_name, null: false

      t.timestamps
    end
  end
end
