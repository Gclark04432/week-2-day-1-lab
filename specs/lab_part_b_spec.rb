require ('minitest/autorun')
require ('minitest/reporters')
require_relative ('../lab_part_b')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class  TestTeam < Minitest::Test

  def test_get_team_details
    team = Team.new("Codeclan", ["Tom", "Bob"], "Alex")
    assert_equal("Codeclan", team.team_name)
    assert_equal(2, team.players.length)
    assert_equal("Alex", team.coach_name)
  end

  def test_set_coach_name
    team = Team.new("Codeclan", ["Tom", "Bob"], "Alex")
    team.coach_name = "Katie"
    assert_equal("Katie", team.coach_name)
  end

  def test_add_new_player
    team = Team.new("Codeclan", [], "Alex")
    team.add_player("Mike")
    assert_equal(1, team.players.length)
  end

  def test_check_player_name
    team = Team.new("Codeclan", ["Tom", "Bob"], "Alex")
    assert_equal(true, team.check_player_name("Tom"))
  end

  def test_check_points
    team = Team.new("Codeclan", ["Tom", "Bob"], "Alex")
    assert_equal(0, team.points)
  end

  def test_team_results_if_win
    team = Team.new("Codeclan", ["Tom", "Bob"], "Alex")
    team.results("win")
    assert_equal(10, team.points)
  end

  def test_team_results_if_lose
    team = Team.new("Codeclan", ["Tom", "Bob"], "Alex")
    team.results("lose")
    assert_equal(2, team.points)
  end

end
