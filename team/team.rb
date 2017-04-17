class Team

  attr_accessor :name, :players, :coach, :points

  def initialize(name, players, coach)
    @name = name
    @players = players
    @coach = coach
    @points = 0 
  end

  def add_player(player)
    return @players.push(player)
  end

  def player_in_a_team(players, name)
    for player_name in @players do
      return true if player_name == name
    end
    return false 
  end

  def updates_the_points(result)
    if result == "won"
      return @points += 5
    else result == "lost"
      return @points -= 1
    end
  end

end