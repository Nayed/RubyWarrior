class Player
  def play_turn(warrior)
    hp = warrior.health
    if warrior.feel.empty?
      if hp < 10
        warrior.rest!
      else
        warrior.walk!
      end
    else
      warrior.attack!
    end
  end
end
