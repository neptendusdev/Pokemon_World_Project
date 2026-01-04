module CustomEggGroups
  @pokemon_patches = {
    # ID_DU_POKEMON => [Groupe1, Groupe2]
    :bulbasaur => [21],
    :ivysaur => [20, 7],
    :venusaur => [20, 7],
    :charmander => [21],
    :charmeleon => [35, 14],
    :charizard => [35, 43],
    :squirtle => [21],
    :wartortle => [35, 29],
    :blastoise => [35, 29],
    :caterpie => [17, 41],
    :metapod => [17],
    :butterfree => [17, 43],
  }
  def self.pokemon_patches
    return @pokemon_patches
  end

  def self.add_pokemon_to_group(pokemon_id, group_ids)
    @pokemon_patches[pokemon_id] = group_ids
  end
end
