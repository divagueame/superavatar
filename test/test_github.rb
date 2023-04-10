# frozen_string_literal: true

require 'minitest/autorun'

class SuperavatarSourcesGithubTest < Minitest::Test
  def setup
    mock_username = 'divagueame'
    @test_user = Superavatar::Sources::Github.new(mock_username)
  end

  def 
  end

  def test_web_profile_url
    assert_equal 'https://github.com/divagueame/', @test_user.web_profile
  end

  def test_api_profile
    assert_equal 'https://api.github.com/users/divagueame', @test_user.api_profile_endpoint
  end
end
