# frozen_string_literal: true

module Superavatar
  module Sources
    class Github
      def initialize(username)
        @username = username
      end

      def avatar_url
        res = api_profile
        p res
        # JSON.parse(res)[:avatar_url]
      end

      def web_profile
        "https://github.com/#{@username}/"
      end

      def api_profile
        "https://api.github.com/users/#{@username}/"
      end
    end
  end
end
