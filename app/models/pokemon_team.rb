class PokemonTeam < ApplicationRecord
  validates :team_size, presence: true, numericality: { only_integer: true, greater_than: 0, less_than_or_equal_to: 6 }
end
