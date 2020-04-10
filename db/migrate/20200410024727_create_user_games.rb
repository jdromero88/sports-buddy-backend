class CreateUserGames < ActiveRecord::Migration[6.0]
  def change
    create_table :user_games do |t|
      t.references :users, null: false, foreign_key: true
      t.references :games, null: false, foreign_key: true

      t.timestamps
    end
  end
end
