class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.integer :location
      t.datetime :time
      t.string :result
      t.string :sport

      t.timestamps
    end
  end
end
