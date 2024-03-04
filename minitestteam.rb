require 'minitest/autorun'
require './testteam'

class TestTeam< Minitest::Test
  def setup
    @teamm = team.new
  end
end

  def test_team_spirit
    assert_equal "Hoorah!", @team.team_spirit
  end
end
