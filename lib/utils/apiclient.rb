# frozen_string_literal: true

# Superavatar::APIClient
#
# Fetches external resources
#
module Superavatar
  module APIClient
    require 'net/http'
    require 'json'
    def self.fetch_external_api(url)
      uri = URI.parse(url)
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true if (uri.scheme = 'https')
      response = http.get(uri.path)
      JSON.parse(response.body)
    end
  end
end
