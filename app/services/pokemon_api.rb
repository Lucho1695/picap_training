class PokemonApi
  def search
    response = HTTParty.get("https://pokeapi.co/api/v2/pokemon").parsed_response
    response['results']
  end
end