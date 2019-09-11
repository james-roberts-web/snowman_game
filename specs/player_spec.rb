require('minitest/autorun')
require('minitest/rg')
require_relative('../hiddenword')
require_relative('../player')
require_relative('../game')


class TestPlayer < MiniTest::Test

  def setup()
    @player = Player.new("Joe")
  end

  def test_player_has_name
    assert_equal("Joe", @player.name)
  end



end
