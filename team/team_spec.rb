require('minitest/autorun')
require('minitest/pride')
require_relative('./team')

class TestTeam < MiniTest::Test

  def setup
    @team = Team.new("Zalgiris", ["Craig", "Darren", "John", "Peter"], "Samuel Lee")  
  end

  def test_set_coach_name
    @team.name = "Tim"
    assert_equal("Tim", @team.name)
  end

  def test_add_player_to_team
    @team.add_player("Liam")
    assert_equal(5, @team.players.count)
  end

  def test_player_in_a_team
    team_players = @team.player_in_a_team(@players, "Craig")
    assert_equal(true, team_players)
  end

  def test_player_not_in_a_team
    team_players = @team.player_in_a_team(@players, "Mike")
    assert_equal(false, team_players)
  end

  def test_updates_the_points_won
    game_result = @team.updates_the_points("won")
    assert_equal(5, game_result)
  end

  def test_updates_the_points_lost
    game_result = @team.updates_the_points("lost")
    assert_equal(-1, game_result)
  end

end