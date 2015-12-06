class Player
  @known_health = nil
  @current_health = nil

  def play_turn(warrior)
    @known_health = warrior.health
    @current_health = warrior.health if @current_health == nil

    if warrior.feel.empty?
      if @current_health > @known_health
        warrior.walk!
      elsif @current_health < 12
        warrior.rest!
      else
        warrior.walk!
      end
    else
      warrior.attack!
    end

    @current_health = warrior.health
  end
end
