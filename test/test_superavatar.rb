# frozen_string_literal: true

require 'minitest/autorun'
require 'superavatar'

class SuperavatarTest < Minitest::Test
  def test_talk
    assert_equal 'Talking init', Superavatar.talk
  end
end
