class CreatePokemonTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemon_teams do |t|
      t.string :pokemon
      t.integer :team_size

      t.timestamps
    end
  end
end
