PFM::ItemDescriptor.define_bag_use(:exp_candy_xs, true) do |item, scene|
  GamePlay.open_party_menu_to_select_pokemon($actors)
  if $game_variables[43] != -1
    # pokemon = $actors[$game_variables[43]] keeping for when we eventually add the EXP animation
    amount = 100
    $game_system.map_interpreter.give_exp($game_variables[43], amount)
  else
    next :unused
  end
end

PFM::ItemDescriptor.define_bag_use(:exp_candy_s, true) do |item, scene|
    GamePlay.open_party_menu_to_select_pokemon($actors)
    if $game_variables[43] != -1
      # pokemon = $actors[$game_variables[43]] keeping for when we eventually add the EXP animation
      amount = 800
      $game_system.map_interpreter.give_exp($game_variables[43], amount)
    else
      next :unused
    end
  end

  PFM::ItemDescriptor.define_bag_use(:exp_candy_m, true) do |item, scene|
    GamePlay.open_party_menu_to_select_pokemon($actors)
    if $game_variables[43] != -1
      # pokemon = $actors[$game_variables[43]] keeping for when we eventually add the EXP animation
      amount = 3000
      $game_system.map_interpreter.give_exp($game_variables[43], amount)
    else
      next :unused
    end
  end

  PFM::ItemDescriptor.define_bag_use(:exp_candy_l, true) do |item, scene|
    GamePlay.open_party_menu_to_select_pokemon($actors)
    if $game_variables[43] != -1
      # pokemon = $actors[$game_variables[43]] keeping for when we eventually add the EXP animation
      amount = 10000
      $game_system.map_interpreter.give_exp($game_variables[43], amount)
    else
      next :unused
    end
  end

  PFM::ItemDescriptor.define_bag_use(:exp_candy_xl, true) do |item, scene|
    GamePlay.open_party_menu_to_select_pokemon($actors)
    if $game_variables[43] != -1
      # pokemon = $actors[$game_variables[43]] keeping for when we eventually add the EXP animation
      amount = 30000
      $game_system.map_interpreter.give_exp($game_variables[43], amount)
    else
      next :unused
    end
  end