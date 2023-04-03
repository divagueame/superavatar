require "minitest/autorun"
require "superavatar"

class SuperavatarTest < Minitest::Test
  def test_talk
    p Superavatar.talk
    assert_equal "Talking init", Superavatar.talk

  end
end
