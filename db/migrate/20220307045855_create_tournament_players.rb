class CreateTournamentPlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :tournament_players do |t|
      t.references :tournament, null: false, foreign_key: true
      t.references :player, null: false, foreign_key: true

      t.timestamps
    end
  end
end
