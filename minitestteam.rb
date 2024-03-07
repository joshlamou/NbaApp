require 'minitest/autorun'
require './nba'

class TestNbaPlayer < Minitest::Test
  def setup
    @nba_player = Nba_Player.new
  end

  def test_shot_attempt
    reactions = [
      "You missed your shot.",
      "You made your shot!",
      "Your shot hit the rim and didn't go in.",
      "Your shot hit the backboard and went in!",
      "You airballed your shot.",
      "You made a 3pt shot!"
    ]

    # Stubbing rand method to simulate different outcomes
    def @nba_player.rand(range)
      3  # Always return 3 for consistent testing
    end

    10.times do
      reaction = @nba_player.shot_attempt
      assert_includes reactions, reaction
    end
  end
end
