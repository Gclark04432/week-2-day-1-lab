class Team

  attr_reader :team_name, :players, :points
  attr_accessor :coach_name

  def initialize(team_name, players, coach_name)
    @team_name = team_name
    @players = players
    @coach_name =  coach_name
    @points = 0
  end

  def add_player(new_player)
    @players << new_player
  end

  def check_player_name(name_to_check)
    @players.include?(name_to_check)
  end

  def results(result)
    @points += 10 if result == 'win'
    @points += 2 if result == 'lose'
  end

end
