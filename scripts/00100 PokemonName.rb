# Definit le nom d'un pokémon via un db_symbol
# @param db_symbol [Symbol] db_symbol du Pokémon
# @return [String] nom du Pokémon
def pokemon_name(db_symbol)
    return data_creatures(db_symbol).name
end