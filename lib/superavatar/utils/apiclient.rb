# frozen_string_literal: true

# Superavatar::APIClient
#
# Fetches external resources
#
module Superavatar
  module APIClient
    class Fetch
    require 'net/http'
    require 'json'
    require 'open-uri'

    def self.fetch_external_api(url, json=true)
     begin 
      puts 'Fetching...'
      response = URI.open(url).read
      response
      JSON.parse(response) if json==true
    rescue StandardError => e
      puts 'Request failed #{e.message}'
    end
    end
  end
end
