require 'minitest/autorun'
require 'superavatar/sources/github'

class SuperavatarSourcesGithubTest < Minitest::Test
  def test_profile_url
    assert_equal "https://github.com/divagueame/", Superavatar::Sources::Github.profile_url('divagueame')
  end
end
