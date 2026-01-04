module CustomEggGroups
  @pokemon_patches = {
    # ID_DU_POKEMON => [Groupe1, Groupe2]
    :bulbasaur => [20],
    :ivysaur => [19, 7],
    :venusaur => [19, 7],
    :charmander => [20],
    :charmeleon => [32, 14],
    :charizard => [32, 39],
    :squirtle => [21],
    :wartortle => [32, 27],
    :blastoise => [32, 27],
    :caterpie => [16, 37],
    :metapod => [16],
    :butterfree => [16, 39],
    :weedle => [16, 37],
    :kakuna => [16],
    :beedrill => [16, 39],
    :pidgey => [18, 39],
    :pidgeotto => [18, 39],
    :pidgeot => [18, 39],
    :rattata => [33],
    :raticate => [33],
  }
  def self.pokemon_patches
    return @pokemon_patches
  end

  def self.add_pokemon_to_group(pokemon_id, group_ids)
    @pokemon_patches[pokemon_id] = group_ids
  end
end
