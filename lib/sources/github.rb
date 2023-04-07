
module Superavatar
  module Sources
    class Github

      def avatar_url(username)
        res = profile(username)
        JSON.parse(res)[:avatar_url]
      end

      private
      def self.profile_url(username)
        "https://github.com/#{username}/"
      end

      def profile(username)
        "https://api.github.com/users/#{username}/"
      end

    end
  end
end
