
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
  def @nba_player.gets
    "4\n"
  end

  10.times do
    reaction = @nba_player.shot_attempt
    assert_includes reactions, reaction
  end
end

def assert_includes(array, value)
  unless array.include?(value)
    raise "Assertion failed: #{value} not found in #{array}"
  end
end
end
