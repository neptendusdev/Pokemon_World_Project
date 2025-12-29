class Game_Character
  # Dynamic move_speed value of the Game_Character, return a different value than @move_speed
  # @return [Integer] the dynamic move_speed
  # @author Nuri Yuri
  # @note changed how stairs work, only slowed when going up stairs
  def move_speed
    return (@in_swamp == 1 ? 2 : 1) if @in_swamp

    move_speed = original_move_speed
    if move_speed > 1
      sys_tag = system_tag
      if facing_right && (sys_tag == StairsR || (sys_tag == StairsR && $game_map.system_tag(@x + 1, @y) == StairsR)) ||
         facing_left && (sys_tag == StairsL || (sys_tag == StairsL && $game_map.system_tag(@x - 1, @y) == StairsL))
        move_speed -= 1
      elsif facing_up && [StairsU, StairsD].include?(sys_tag)
        move_speed -= 1
      end
    end
    move_speed
  end
  alias og_move_speed move_speed

  private

  def facing_up
    @direction == 8
  end

  def facing_right
    @direction == 6
  end

  def facing_left
    @direction == 4
  end

  def facing_down
    @direction == 2
  end
end
