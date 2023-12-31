class PokemonTeamsController < ApplicationController
  require 'httparty'
  skip_before_action :verify_authenticity_token, only: [:create]

  def index
    pokemon_teams = PokemonTeam.all
    render json: pokemon_teams
  end

  def show
    pokemon_team = PokemonTeam.find(params[:id])
    render json: pokemon_team
  end

  def create
    team_size = params[:team_size].to_i

    if team_size <= 0 || team_size > 6
      render json: { error: 'O tamanho da equipe deve estar entre 1 e 6.' }, status: :bad_request
    else
      team = []
      team_size.times do
        pokemon_data = fetch_random_pokemon
        team << pokemon_data['name']
      end

      pokemon_team = PokemonTeam.new(pokemon: team.join(','), team_size: team_size)

      if pokemon_team.save
        render json: { team: team }, status: :created
      else
        render json: { error: 'Não foi possível salvar a equipe Pokémon.' }, status: :bad_request
      end
    end
  end

  private

  def fetch_random_pokemon
    response = HTTParty.get('https://pokeapi.co/api/v2/pokemon-species/?limit=1000')
    results = JSON.parse(response.body)['results']
    random_pokemon = results.sample
    response = HTTParty.get(random_pokemon['url'])
    JSON.parse(response.body)
  end
end
