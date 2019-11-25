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

end
