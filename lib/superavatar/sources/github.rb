# frozen_string_literal: true

module Superavatar
  module Sources
    class Github
      def initialize(username)
        @username = username
        @avatar_url = nil
      end

      def get_avatar_url
        return @avatar_url unless @avatar_url.nil?

        url = api_profile_endpoint
        github_res = Superavatar::Utils::Apiclient.fetch_external_api(url)
        @avatar_url = github_res.fetch('avatar_url')
      end

      def web_profile
        "https://github.com/#{@username}/"
      end

      def api_profile_endpoint
        "https://api.github.com/users/#{@username}"
      end
    end
  end
end
