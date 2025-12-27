# Add quick save sequence
Scheduler.add_proc(:on_update, ::Scene_Map, 'QuickSave', 0) do
  if Input.press?(:SELECT)
    next if $game_system.save_disabled
    next if PFM.game_state.cant_process_event_tasks?
    next if $game_temp.save_calling == true
    next unless $game_player&.movable?
    log_debug('Quicksave shortcut triggered.')

    GamePlay::Save.save
    Audio.se_play('audio/se/save')
    $scene.display_message_and_wait(parse_text(17, 14))
  end
end

Input::Keys[:SELECT] << Sf::Keyboard::Scancode::F5
